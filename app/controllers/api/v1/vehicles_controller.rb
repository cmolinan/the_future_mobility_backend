class Api::V1::VehiclesController < ApplicationController
  def index
    vehicles = Vehicle.all

    render json: vehicles
  end

  def show
    vehicle = Vehicle.find[params[:vehicle_id]]

    render json: vehicle
  end

  def create
    vehicle = Vehicle.new(crete_vehicle_params)

    if vehicle.save
      render json: vehicle
    else
      render json: vehicle.errors.full_messages
    end
  end

  def destroy; end

  private

  def create_vehicle_params
    params.require(:vehicle).permit(:name, :image)
  end
end
