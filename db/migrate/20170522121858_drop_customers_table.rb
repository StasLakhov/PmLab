class DropCustomersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :customers
  end
end
