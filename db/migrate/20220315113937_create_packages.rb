class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages do |t|
      t.text :details
      t.decimal :weight
      t.text :special_instructions

      t.timestamps
    end
  end
end
