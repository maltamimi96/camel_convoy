class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.integer :user_id
      t.string :vehicle
      t.string :registration
      t.boolean :insurance

      t.timestamps
    end
  end
end
