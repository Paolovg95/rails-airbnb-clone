class Service < ApplicationRecord
  belongs_to :user
  belongs_to :list
  has_many :bookings
  # geocode
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :global,
    against: [ :service_title, :location ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
