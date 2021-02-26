class CreateFactElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_elevators do |t|
t.references :column, foreign_key: true
      t.string :dwh_serial_number
      t.date :dwh_commission_date
      t.integer :dwh_building_id
      t.integer :dwh_customer_id
      t.string :dwh_building_city
      t.timestamps
    end
  end
end
