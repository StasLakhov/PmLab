class DelCoworkersTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :coworkers
  end
end
