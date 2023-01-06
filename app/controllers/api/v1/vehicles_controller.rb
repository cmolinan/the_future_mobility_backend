class Api::V1::VehiclesController < ApplicationController
  def index
    vehicles = Vehicle.all

    render json: vehicles
  end

  def show
    vehicle = Vehicle.find[params[:vehicle_id]]

    render json: vehicle
  end

  def create; end

  def destroy; end
end
