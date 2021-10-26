class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :listing_type
      t.string :location
      t.integer :price_rate
      t.string :listing_title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
