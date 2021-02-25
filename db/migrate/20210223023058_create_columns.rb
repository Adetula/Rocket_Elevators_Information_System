class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.references :battery, foreign_key: true
      t.string :column_building_type
      t.integer :column_floors_served
      t.string :column_status
      t.text :column_information
      t.text :column_notes

      t.timestamps
    end
  end
end
