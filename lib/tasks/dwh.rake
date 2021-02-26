namespace :dwh do
    desc "Transfer data to dwh"
    task :import => :environment do
        puts "Import started"

        DwhRecord.connection.execute("TRUNCATE fact_quotes")
        
        # FactQuote.delete_all
        Quote.all.each do |quote|
            FactQuote.create!(
                dwh_quote_id: quote.id,
                dwh_creation_date: quote.created_at,
                dwh_company_name: quote.name,
                dwh_email: quote.email_quote,
                dwh_elevators_required: quote.elevators_required
            )
        end
        
        DwhRecord.connection.execute("TRUNCATE fact_contacts")

        Lead.all.each do |lead|
            FactContact.create!(
                dwh_contact_id: lead.id,
                dwh_creation_date: lead.created_at,
                dwh_company_name: lead.company_name_leads,
                dwh_email: lead.email_lead,
                dwh_project_name: lead.project_name_leads
            )
        end

        
        DwhRecord.connection.execute("TRUNCATE fact_elevators")

        Elevator.all.each do |elevator|
            FactElevator.create!(
                dwh_serial_number: elevator.serial_number,
                dwh_commission_date: elevator.date_of_commissioning,
                dwh_building_id: elevator.column.battery.building_id,
                dwh_customer_id: elevator.column.battery.building.customer_id,
                dwh_building_city: elevator.column.battery.building.address.city
            )
        end

        DwhRecord.connection.execute("TRUNCATE dim_customers")

        Customer.all.each do |customer|
            
        #     DimCustomer.create!(
        #         dwh_customer_creation_date: customer.customers_creation_date,
        #         dwh_customer_company_name: customer.company_name,
        #         dwh_customer_company_contact: customer.full_name_of_company_contact,
        #         dwh_customer_company_email: customer.email_of_company_contact,
        #         nb_elevators: numElevators,
        #         customer_city: customer.address.city
        #     )
        # end #Customer

    end #task
end #namespace