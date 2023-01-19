module Api
  module V1
    class VehiclesController < ApplicationController
      before_action :read_vehicle, only: %i[show destroy]
      before_action :authorize_request, only: %i[create destroy]

      def index
        vehicles = Vehicle.all
        render json: vehicles
      end

      def show
        render json: @vehicle
      end

      def create
        vehicle = Vehicle.new(create_vehicle_params)

        if vehicle.save
          render json: vehicle
        else
          render json: vehicle.errors.full_messages
        end
      end

      def destroy
        if @vehicle.destroy
          render json: 'Vehicle deleted successfully'
        else
          render json: @vehicle.errors.full_messages
        end
      end

      private

      def create_vehicle_params
        params.require(:vehicle).permit(:name, :image, :enginepower, :enginetourque,
                                        :transmission, :fuel_capacity, :seat)
      end

      def read_vehicle
        @vehicle = Vehicle.find(params[:id])
      end
    end
  end
end
