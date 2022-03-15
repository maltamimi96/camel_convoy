class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|
      t.text :title
      t.integer :num_packages
      t.integer :duration

      t.timestamps
    end
  end
end
