class CreateTaskTranslations < ActiveRecord::Migration
  def up
    Task.create_translation_table!({
      title: :string,
      description: :text
    }, { migrate_data: true })
  end

  def down
    Task.drop_translation_table! migrate_data: true
  end
end
