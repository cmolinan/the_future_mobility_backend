class Api::V1::VehiclesController < ApplicationController
  def index
    vehicles = Vehicle.all

    render json: vehicles
  end

  def show; end

  def create; end

  def destroy; end
end
