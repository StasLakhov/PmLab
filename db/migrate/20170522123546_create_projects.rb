class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :status
      t.string :startdate
      t.string :enddate
      t.string :receive
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
