class ChangeCustomerAllowNull < ActiveRecord::Migration[5.1]
  def change
    change_column :customers, :name, :string, :null => true
  end
end
