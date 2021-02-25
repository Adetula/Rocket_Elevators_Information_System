class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :user, foreign_key: true
      t.string :customer_company_name
      t.references :address, foreign_key: true
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
