class DropProjectinfosTable < ActiveRecord::Migration[5.1]
  def change
    drop_table :projectinfos
  end
end
