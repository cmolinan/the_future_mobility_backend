class Reservation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :vehicle, class_name: 'Vehicle', foreign_key: 'vehicle_id'

end
