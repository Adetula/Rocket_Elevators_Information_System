class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.references :building, foreign_key: true
      t.string :building_details_information_key
      t.string :building_details_value

      t.timestamps
    end
  end
end
