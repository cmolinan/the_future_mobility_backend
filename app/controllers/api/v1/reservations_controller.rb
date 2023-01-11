module Api
  module V1
    class ReservationsController < ApplicationController
      before_action :authorize_request
      before_action :read_reservation, only: %i[show destroy]

      def index
        reservations = Reservation.where(user_id: params[:user_id])
        render json: reservations
      end

      def show
        render json: @reservation
      end

      def create
        reservation = Reservation.new(create_reservation_params)
        if reservation.save
          render json: reservation, status: :created
        else
          render Json: reservation.errors.full_messages, status: :unprocessable_entity
        end
      end

      def destroy
        if @reservation.destroy
          render json: 'Reservation deleted successfully'
        else
          render json: @reservation.errors.full_messages
        end
      end

      private

      def create_reservation_params
        params.require(:reservation).permit(:reserve_date, :address, :user_id, :vehicle_id)
      end

      def read_reservation
        @reservation = Reservation.find(params[:id])
      end
    end
  end
end
