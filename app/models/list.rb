class List < ApplicationRecord
  LIST_OF_SERVICES = ["Electrical", "Maintenance", "Painting", "Remodeling", "Carpentry", "Assembly"]

  has_many :services
end
