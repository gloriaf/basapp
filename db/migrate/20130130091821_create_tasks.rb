class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :code
      t.string :title
      t.integer :sequence
      t.string :rroute
      t.string :description
      t.boolean :general
      t.boolean :active

      t.timestamps
    end
  end
end
