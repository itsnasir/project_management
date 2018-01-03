class CreateTaskWorkLogs < ActiveRecord::Migration[5.1]
  def change
    
    create_table :task_work_logs do |t|
      t.integer :task_id
      t.string :log_time
      t.integer :user_id

      t.timestamps
    end

    add_index :task_work_logs, :task_id    
    add_index :task_work_logs, :user_id

  end
end
