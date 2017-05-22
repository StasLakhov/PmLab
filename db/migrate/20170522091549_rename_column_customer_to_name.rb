class RenameColumnCustomerToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :customers, :name
  end
end
