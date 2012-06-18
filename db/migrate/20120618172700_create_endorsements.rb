class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
     # t.string :endorser
      #t.string :endorsed
      #t.references :side_project
      #t.references :user
      #t.timestamps
      t.integer :user_id
      t.integer :side_project_id

  end
    add_index :endorsements, [:user_id, :side_project_id]
  end
end
