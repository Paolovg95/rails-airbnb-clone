class List < ApplicationRecord
  LIST_OF_SERVICES = ["Electrical", "Maintenance", "Painting", "Remodeling", "Carpentry", "Assembly"]
  SOLUTIONS = ["quality", "schedule", "location"]

  has_many :services
  # include PgSearch::Model
  # multisearchable against: [:service_title, :location]

  # pg_search_scope :search_by_service_title_location,
  # against: [ :listing_type ],
  # associated_against: {
  #   service: [ :service_title, :location ]
  # },
  # using: {
  #   tsearch: { prefix: true }
  # }

end
