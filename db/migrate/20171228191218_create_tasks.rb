class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    
    create_table :tasks do |t|
      t.string :title
      t.text :description      
      t.integer :project_id
      t.string :estimated_dev_time
      t.integer :user_id
      t.integer :status_id
      t.integer :creator_id
      t.integer :updater_id      

      t.timestamps
    end

    add_index :tasks, :user_id    
    add_index :tasks, :creator_id    
    add_index :tasks, :updater_id
    add_index :tasks, :status_id    

  end
end
