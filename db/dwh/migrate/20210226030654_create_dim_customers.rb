class CreateDimCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :dim_customers do |t|
      t.string :dwh_customer_creation_date
      t.string :dwh_customer_company_name
      t.string :dwh_customer_company_contact
      t.string :dwh_customer_company_email
      t.integer :nb_elevators
      t.string :customer_city
      t.timestamps
    end
  end
end
