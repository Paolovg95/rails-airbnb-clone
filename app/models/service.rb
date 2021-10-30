class Service < ApplicationRecord
  belongs_to :user
  belongs_to :list

  # geocode
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end