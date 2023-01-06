class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.where(user: current_user)
    render json: reservations
  end

  def create
    reservation = Reservation.new(reservation_params, user: current_user, vehicle: Vehicle.where(id: params[:vehicle_id]))
    if reservation.save
      render json: reservation
    else
      render Json: reservation.errors.full_messages
    end
  end

  def destroy
    reservation = Reservation.where(params[:reservation_id])
    if reservation_id.destroy
      render json: "Reservation deleted successfully"
    else
      render json: reservation.errors.full_messages
    end
  end
end
