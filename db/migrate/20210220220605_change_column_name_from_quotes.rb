class ChangeColumnNameFromQuotes < ActiveRecord::Migration[5.2]
  def change
    rename_column :quotes, :email, :email_quote
  end
end
