class AddCoordinatesToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :latitude, :float
    add_column :services, :longitude, :float
    add_column :services, :service_description
  end
end
