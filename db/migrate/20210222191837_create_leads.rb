class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :full_name_lead
      t.string :email_lead
      t.string :phone_lead
      t.string :company_name_leads
      t.string :project_name_leads
      t.string :project_description_leads
      t.string :department
      t.text :message_leads
      t.binary :attachment_file_leads, limit: 2.megabytes 
      t.timestamps
    end
  end
end
