class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address_type
      t.string :address_status
      t.string :address_entity
      t.string :address_street
      t.string :address_suite_or_apt
      t.string :address_city
      t.string :address_zip_code
      t.string :address_country
      t.text :address_notes

      t.timestamps
    end
  end
end
