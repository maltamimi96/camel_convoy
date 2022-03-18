class AddUserIdToDeliveries < ActiveRecord::Migration[6.1]
  def change
    add_column :deliveries, :user_id, :integer
    add_index :deliveries, :user_id
  end
end
