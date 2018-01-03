class CreateAttachments < ActiveRecord::Migration[5.1]
  def change
    
    create_table :attachments do |t|
      t.string :file
      t.integer :attachable_id
      t.string :attachable_type
      t.integer :creator_id
      t.integer :updater_id
      t.decimal :file_size

      t.timestamps
    end

    add_index :attachments, :creator_id
    add_index :attachments, :updater_id    
    add_index :attachments, :attachable_id

  end
end
