require 'rails_helper'

describe 'User' do
  it 'creates a custom map' do
    visit new_map_path

    expect(page).to have_css('#map')

    # map_count = Maps.all.count

    click_on 'Use This Map'

    expect(Maps.all.count).to eq(map_count + 1)
  end
end

# { lat: map.getCenter().lat, long: map.getCenter().lng, zoom:map.getZoom() }
# <button onclick="collectMap(map)">Use This Map</button>
# <%= button_to 'Use This Map', :controller => "maps", :action => "create", map: { :lat => 1, :long => 2, :zoom => 4 }, :method=>:post  %>
