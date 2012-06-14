class CreateTagsSideProjects < ActiveRecord::Migration
  def change
      create_table :side_projects_tags do |t|
        t.integer :tag_id
        t.integer :side_project_id
      end

    end
end
