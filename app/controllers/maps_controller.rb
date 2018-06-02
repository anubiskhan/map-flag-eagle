class MapsController < ApplicationController
  def new

  end
  private

  def map_params
    params.permit(:lat, :long, :zoom)
  end
end
