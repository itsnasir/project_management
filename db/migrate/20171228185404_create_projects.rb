class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    
    create_table :projects do |t|
      t.string :client_name
      t.text :description
      t.string :technology      
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :creator_id
      t.integer :updater_id

      t.timestamps
    end

    add_index :projects, :name
    add_index :projects, :creator_id
    add_index :projects, :updater_id

  end
end
