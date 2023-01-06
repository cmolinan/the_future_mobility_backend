class Api::V1::VehiclesController < ApplicationController
  def index
    vehicles = Vehicle.all

    render json: vehicles
  end

  def show
    vehicle = Vehicle.find(params[:id])

    render json: vehicle
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
    vehicle = Vehicle.find(params[:id])

    if vehicle.destroy
      render json: 'Vehicle deleted successfully'
    else
      render json: vehicle.errors.full_messages
    end
  end

  private

  def create_vehicle_params
    params.require(:vehicle).permit(:name, :image)
  end
end
