class List < ApplicationRecord
  SERVICES = ["Electrical","Maintenance", "Painting", "Remodeling","Carpentry","Assembly"]

  has_many :services
end
