class AddTaskDates < ActiveRecord::Migration[5.1]
  def change
    add_column :mytasks, :createtask, :string
    add_column :mytasks, :endtask, :string
  end
end
