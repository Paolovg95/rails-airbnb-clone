class List < ApplicationRecord
  SERVICES = ["Electrical","Maintenance", "Painting", "Remodeling","Carpentry","Assembly"]

  belongs_to :user
end
