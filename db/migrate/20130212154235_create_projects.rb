class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :project_type
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end
end
