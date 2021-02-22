class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_user_id
      t.date :customer_creation_date
      t.string :customer_company_name
      t.string :customer_company_hq_address
      t.string :customer_full_name_of_company_contact
      t.string :customer_company_phone
      t.string :customer_company_email
      t.text :customer_company_description
      t.string :customer_full_name_of_service_technical_authority
      t.string :customer_technical_authority_phone
      t.string :customer_technical_manager_email

      t.timestamps
    end
  end
end
