class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :building_type
      t.string :number_apartments_residential
      t.string :number_floors_residential
      t.string :number_basements_residential
      t.string :number_companies
      t.string :number_floors_commercial
      t.string :number_basements_commercial
      t.string :number_parking_commercial
      t.string :number_elevators
      t.string :number_corporate
      t.string :number_floors_corporate
      t.string :number_basements_corporate
      t.string :number_parking_corporate
      t.string :number_occupants_corporate
      t.string :number_of_corporations
      t.string :number_floors_hydrid
      t.string :number_basements_hybrid
      t.string :number_parking_hybrid
      t.string :number_occupants_hybrid
      t.string :number_hours_act
      t.string  :service_level
      t.integer :elevators_required
      t.string :elevator_unit_price
      t.string :elevator_total_price
      t.string :installation_fees
      t.string :final_price
      t.timestamps
    end
  end
end
