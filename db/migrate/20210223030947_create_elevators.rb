class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.references :column, foreign_key: true
      t.string :elevator_serial_number
      t.string :elevator_model
      t.string :elevator_type
      t.string :elevator_status
      t.date :elevator_date_of_commissioning
      t.string :elevator_date_of_last_inspection
      t.string :elevator_certificate_of_inspection
      t.text :elevator_information
      t.text :elevator_notes
      t.timestamps
    end
  end
end
