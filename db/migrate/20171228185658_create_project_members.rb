class CreateProjectMembers < ActiveRecord::Migration[5.1]
  def change
    
    create_table :project_members do |t|
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :project_members, :project_id
    add_index :project_members, :user_id

  end
end
