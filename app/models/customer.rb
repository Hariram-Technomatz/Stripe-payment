class Customer < ApplicationRecord
  has_many :bookings
  has_many :workshops, through: :bookings
end
