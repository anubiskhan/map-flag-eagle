require 'rails_helper'

describe 'User' do
  describe 'visits an order show page' do
    it 'sees information about that order' do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      map = Map.create(
        lat: 1,
        long: 1,
        zoom: 4
      )
      map.create_static
      order = Order.create(
        total: 123,
        user_id: user.id,
        map_id: map.id
      )

      visit order_path(order)

      expect(page).to have_content(user.name)
      expect(page).to have_content("Total: $#{order.total}")
    end
  end
end
