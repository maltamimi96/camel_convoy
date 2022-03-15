class RemoveUserIdFromDriver < ActiveRecord::Migration[6.1]
  def change
    remove_column :drivers, :user_id, :integer
  end
end
