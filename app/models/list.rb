class List < ApplicationRecord
  LIST_OF_SERVICES = ["Electrical", "Maintenance", "Painting", "Remodeling", "Carpentry", "Assembly"]
  SOLUTIONS = ["quality", "schedule", "location"]

  has_many :services
end
