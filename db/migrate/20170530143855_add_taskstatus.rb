class AddTaskstatus < ActiveRecord::Migration[5.1]
  def change
    add_column :mytasks, :taskstatus, :string
  end
end
