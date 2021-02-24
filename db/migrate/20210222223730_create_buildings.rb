class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.references :customer, foreign_key: true
      t.references :address, foreign_key: true
      t.string :building_admin_full_name
      t.string :building_admin_phone_number
      t.string :building_admin_email
      t.string :building_technical_contact_full_name
      t.string :building_technical_contact_phone
      t.string :building_technical_contact_email
      t.timestamps
    end
  end
end
