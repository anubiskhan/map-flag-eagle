class Map < ApplicationRecord
  def initialize(lat, long, zoom)
    "http://maps.googleapis.com/maps/api/staticmap?&center=(#{lat},#{long})&size=750x450&zoom=#{zoom}&key=AIzaSyCJwmkCQw56cvtU03ftjoN1SpzL1VmTov4&style=feature:administrative|element:all|saturation:-100&style=feature:administrative.province|element:all|visibility:off&style=feature:landscape|element:all|saturation:-100|lightness:65|visibility:on&style=feature:poi|element:all|visibility:off&style=feature:road|element:all|saturation:-100&style=feature:road.highway|element:all|visibility:simplified&style=feature:road.arterial|element:all|lightness:30&style=feature:road.local|element:all|lightness:40&style=feature:transit|element:all|saturation:-100|visibility:simplified&style=feature:water|element:geometry|hue:0xffff00|lightness:-25|saturation:-97&style=feature:water|element:labels|lightness:-25|saturation:-100
"
  end
end
