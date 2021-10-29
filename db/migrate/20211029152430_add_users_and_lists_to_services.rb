class AddUsersAndListsToServices < ActiveRecord::Migration[6.0]
  def change
    add_reference :services, :user, null: false, foreign_key: true
    add_reference :services, :list, null: false, foreign_key: true
  end
end
