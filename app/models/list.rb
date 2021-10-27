class List < ApplicationRecord
  SERVICES = ["Electrical","Maintanance", "Painting", "Remodeling","Carpentry","Assembly"]
  AREAS = ['Bathroom', 'Kitchen']
  belongs_to :user
end
