class List < ApplicationRecord
  LIST_OF_SERVICES = ["Electrical", "Maintenance", "Painting", "Remodeling", "Carpentry", "Assembly"]
  SOLUTIONS = ["quality", "schedule", "location"]
  SOLUTIONS_TEXT = [
  "Connect with real professionals that offer the best Quality & Safety",
  "Save time by managing your bookings with essential features",
  "Get access to a wide range of professionals anywhere you are."]

  has_many :services
end
