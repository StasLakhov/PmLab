class AddReceiveColumnToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :receive, :string
  end
end
