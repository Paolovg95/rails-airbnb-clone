class ChangeUserRole < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :role
    add_column :users, :admin, :boolean
  end
end
