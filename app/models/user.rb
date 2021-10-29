class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  ROLES = ["Client", "Provider"]
  has_many :services

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
end
