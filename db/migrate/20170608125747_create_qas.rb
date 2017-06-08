class CreateQas < ActiveRecord::Migration[5.1]
  def change
    create_table :qas do |t|
      t.string :device
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
