class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.where(user_id: params[:user_id])
    render json: reservations
  end

  def create
    reservation = Reservation.new(create_reservation_params)
    if reservation.save
      render json: reservation
    else
      render Json: reservation.errors.full_messages
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    if reservation.destroy
      render json: 'Reservation deleted successfully'
    else
      render json: reservation.errors.full_messages
    end
  end

  private

  def create_reservation_params
    params.require(:reservation).permit(:reserve_date, :address, :user_id, :vehicle_id)
  end
end
