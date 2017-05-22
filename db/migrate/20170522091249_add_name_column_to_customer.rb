class AddNameColumnToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customers, :string
  end
end
