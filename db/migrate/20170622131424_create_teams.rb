class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :position
      t.string :phone
      t.string :skype
      t.string :email
      t.string :birthday
      t.string :hired

      t.timestamps
    end
  end
end
