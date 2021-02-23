class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :battery_building_id
      t.string :battery_building_type
      t.string :battery_employee_id
      t.date :battery_date_of_commission
      t.string :battery_date_of_last_inspection
      t.string :battery_certificate_of_operations
      t.string :battery_information
      t.text :battery_notes

      t.timestamps
    end
  end
end
