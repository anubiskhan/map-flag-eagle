require 'rails_helper'

describe 'User' do
  describe 'while looking at static map' do
    it 'decides to order it' do
      Product.create!(
        name: 'Custom Map',
        description: 'Pick the location and zoom of your own map!',
        price: 39,
      )
      map = Map.create(lat: 1, long: 1, zoom: 2)
      allow_any_instance_of(ApplicationController).to receive(:current_map).and_return(map)
      map.create_static

      current_user = create(:user)

      visit new_order_path

      click_on 'Order This'

      expect(current_path).to eq('/cart')
    end
  end
end
