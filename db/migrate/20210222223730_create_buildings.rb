class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :building_customer_ID
      t.string :building_address
      t.string :building_admin_full_name
      t.integer :building_admin_phone_number
      t.string :building_technical_contact_full_name
      t.string :building_technical_contact_email
      t.string :building_technical_contact_email

      t.timestamps
    end
  end
end
