require 'rails_helper'

describe 'User' do
  describe 'while looking at static map' do
    it 'decides to order it' do
      map = Map.create(lat: 1, long: 1, zoom: 2)
      map.create_static

      visit map_path(map)

      expect(page).to have_css('.flag-image')

      click_on 'Create Order'

      expect(current_path).to eq(new_order_path)
    end
  end
end
