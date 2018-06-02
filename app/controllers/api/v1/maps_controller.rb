class Api::V1::MapsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @map = Map.new(map_params[:lat], map_params[:long], map_params[:zoom])
    # Happy/sad path logic, build out table for map
    redirect_to new_order_path
  end

  private

  def map_params
    params.permit(:lat, :long, :zoom)
  end
end
