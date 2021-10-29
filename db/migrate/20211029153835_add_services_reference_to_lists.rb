class AddServicesReferenceToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :service, null: false, foreign_key: true
  end
end
