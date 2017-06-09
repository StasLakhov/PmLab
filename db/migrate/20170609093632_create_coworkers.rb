class CreateCoworkers < ActiveRecord::Migration[5.1]
  def change
    create_table :coworkers do |t|
      t.string :coworker_name
      t.string :coworker_position
      t.string :coworker_phone
      t.string :coworker_skype
      t.string :coworker_email
      t.references :customers, foreign_key: true

      t.timestamps
    end
  end
end
