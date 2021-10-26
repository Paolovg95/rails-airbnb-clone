class List < ApplicationRecord
  SERVICES = ["Electrical","Maintanance", "Painting", "Remodeling","Carpentry","Assembly"]

  belongs_to :user
end
