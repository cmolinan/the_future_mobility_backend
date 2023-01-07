class ReservationsController < ApplicationController
  before_action :authorize_request

  def index
    @user_reservations = Reservation.where(user_id: params[:user_id])
    render json: @user_reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
    render json: @reservation
  end

  def create; end

  private

  def reservation_params
    # params.require(:reservation).permit(:reserve_date, :address)
    params.require(:reservation)
  end
end
