class CreateProjectBillingDetails < ActiveRecord::Migration[5.1]
  def change
    
    create_table :project_billing_details do |t|
      t.integer :project_id
      t.integer :billing_method, :default => 0 #enum for billing method 0 for flat rate, 1 for hourly rate
      t.decimal :hourly_rate
      t.decimal :flat_rate

      t.timestamps
    end

    add_index :project_billing_details, :project_id    

  end
end
