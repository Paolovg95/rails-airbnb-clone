class RemoveColumnsFromList < ActiveRecord::Migration[6.0]
  def change
    remove_column :lists, :location
    remove_column :lists, :price_rate
    remove_column :lists, :listing_title
    remove_references :lists, :user, index: true, foreign_key: true
  end
end
