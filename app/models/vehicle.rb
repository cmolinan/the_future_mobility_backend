class Vehicle < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :image, presence: true
end
