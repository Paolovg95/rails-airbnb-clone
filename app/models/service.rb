class Service < ApplicationRecord
  belongs_to :lists
  has_many :users

end
