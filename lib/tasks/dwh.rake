namespace :dwh do
    desc "Transfer data to dwh"
    task :import => :environment do
        puts "Import started"

        DwhRecord.connection.execute("TRUNCATE fact_quotes")
        
        FactQuote.delete_all
        Quote.all.each do |quote|
            FactQuote.create!(
                dwh_quote_id: quote.id,
                dwh_creation_at: quote.created_at,
                dwh_company_name: quote.name,
                dwh_email: quote.email_quote,
                dwh_elevators_required: quote.elevators_required
            )
        end
        
        DwhRecord.connection.execute("TRUNCATE fact_contacts")
        FactContact.delete_all
        Lead.all.each do |lead|
            FactContact.create!(
                dwh_contact_id: lead.id,
                dwh_created_at: lead.created_at,
                dwh_company_name: lead.company_name_leads,
                dwh_email: lead.email_lead,
                dwh_project_name: lead.project_name_leads
            )
        end

        
        DwhRecord.connection.execute("TRUNCATE fact_elevators")
        FactElevator.delete_all
        Elevator.all.each do |elevator|
            FactElevator.create!(
                dwh_serial_number: elevator.elevator_serial_number,
                dwh_commission_date: elevator.elevator_date_of_commissioning,
                dwh_building_id: elevator.column.battery.building_id,
                dwh_customer_id: elevator.column.battery.building.customer_id,
                dwh_building_city: elevator.column.battery.building.address.address_city
            )
        end

        DwhRecord.connection.execute("TRUNCATE dim_customers")
        DimCustomer.delete_all
        Customer.all.each do |customer|
            elevatorCount = 0
            Building.all.each do |building|
                if building.customer_id == customer.id
                    Battery.all.each do |battery|
                        if battery.building_id == building.id
                            Column.all.each do |column|
                                if column.battery_id == battery.id
                                    Elevator.all.each do |elevator|
                                        if elevator.column_id == column.id
                                            elevatorCount += 1
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            DimCustomer.create!(
                dwh_customer_creation_date: customer.created_at,
                dwh_customer_company_name: customer.customer_company_name,
                dwh_customer_company_contact: customer.customer_full_name_of_company_contact,
                dwh_customer_company_email: customer.customer_company_email,
                nb_elevators: elevatorCount,
                customer_city: customer.address.address_city
            )
        end #Customer
        puts "Import finished"
    end #task
    
end #namespace
