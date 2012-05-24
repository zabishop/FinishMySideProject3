class CreateSideProjects < ActiveRecord::Migration
  def change
    create_table :side_projects do |t|
      t.string :project_title
      t.text :description
      t.string :repo_url
      t.string :image_url
      t.references :user

      t.timestamps
    end
    add_index :side_projects, :user_id
  end
end
