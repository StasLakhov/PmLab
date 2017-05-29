class CreateMytasks < ActiveRecord::Migration[5.1]
  def change
    create_table :mytasks do |t|
      t.string :taskname
      t.text :taskcontent

      t.timestamps
    end
  end
end
