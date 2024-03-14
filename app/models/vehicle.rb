class Vehicle < ApplicationRecord
  validates :license_plate, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :year, presence: true
end
