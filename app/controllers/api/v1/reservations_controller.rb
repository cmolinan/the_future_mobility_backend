class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.where(user: current_user)
    render json: reservations
  end

end
