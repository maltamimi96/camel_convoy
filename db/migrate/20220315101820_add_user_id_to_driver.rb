class AddUserIdToDriver < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :user_id, :integer
    add_index :drivers, :user_id
  end
end
