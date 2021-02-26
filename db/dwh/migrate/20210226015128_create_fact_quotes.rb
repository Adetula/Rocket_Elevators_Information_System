class CreateFactQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_quotes do |t|
      t.integer :dwh_quote_id
      t.datetime :dwh_creation_at
      t.string :dwh_company_name
      t.string :dwh_email
      t.string :dwh_elevators_required
      t.timestamps
    end
  end
end
