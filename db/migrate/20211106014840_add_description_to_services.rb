class AddDescriptionToServices < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :service_description, :string
  end
end
