class AddDescriptionToDeliveries < ActiveRecord::Migration[6.1]
  def change
    add_column :deliveries, :description, :text
  end
end
