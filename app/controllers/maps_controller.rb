class MapsController < ApplicationController
  def new

  end

  def create
    @map = Map.new(map_params[:lat], map_params[:long], map_params[:zoom])
    binding.pry
    { "success": "Utilize this map" }
  end

  private


  def map_params
    binding.pry
    params.require(:map).permit(:lat, :long, :zoom)
  end
end
