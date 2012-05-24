class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :side_project

      t.timestamps
    end
    add_index :tags, :side_project_id
  end
end
