require 'rails_helper'

describe 'User' do
  it 'creates a custom map' do
    visit maps_new_path

    expect(page).to have_css('#map')

    click_on 'Use This Map'

    expect(Maps.all.count).to eq(1)
    expect(current_path).to eq(new_order_path)
  end
end


# inherit from ActionController::API
