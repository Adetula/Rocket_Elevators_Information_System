class CreateDwhManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :dwh_managers do |t|

      t.timestamps
    end
  end
end
