class VehiclesController < ApplicationController
  before_action :read_vehicle, only: %i[show destroy]

  def index
    @vehicles = Vehicle.all
    render json: @vehicles
  end

  def show
    render json: @vehicle
  end

  def create; end

  def destroy; end

  private

  def read_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    # params.require(:vehicle).permit(:name, :image, :details1, :details2)
  end
end
