class Api::V1::MapsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    map = Map.create(map_params)
    session[:map] = map.id
    map.create_static
    render js: "window.location = '#{new_order_path}'"
  end

  private

  def map_params
    params.permit(:lat, :long, :zoom)
  end
end
