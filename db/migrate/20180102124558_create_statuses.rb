class CreateStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :statuses do |t|
      t.string :name
      t.string :alias
      t.boolean :is_active, :default => true

      t.timestamps
    end
  end
end
