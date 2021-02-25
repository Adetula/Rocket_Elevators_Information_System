class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.references :building, foreign_key: true
      t.string :battery_building_type
      t.references :employee, foreign_key: true
      t.date :battery_date_of_commission
      t.date :battery_date_of_last_inspection
      t.string :battery_certificate_of_operations
      t.text :battery_information
      t.text :battery_notes

      t.timestamps
    end
  end
end
