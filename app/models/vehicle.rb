class Vehicle < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :image, presence: true
end
