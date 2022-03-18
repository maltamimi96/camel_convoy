class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.string :title
      t.string :deliver
      t.datetime :by
      t.integer :packages
      t.decimal :pay

      t.timestamps
    end
  end
end
