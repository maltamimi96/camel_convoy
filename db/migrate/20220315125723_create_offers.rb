class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.text :title
      t.integer :total_packages
      t.float :Duration

      t.timestamps
    end
  end
end
