class CreateFactContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :fact_contacts do |t|
      t.integer :dwh_contact_id
      t.data :dwh_created_at
      t.string :dwh_company_name
      t.string :dwh_email
      t.string :dwh_project_name
      t.timestamps
    end
  end
end
