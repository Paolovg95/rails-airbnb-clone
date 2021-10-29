class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :service_title
      t.integer :price_rate
      t.string :location

      t.timestamps
    end
  end
end
