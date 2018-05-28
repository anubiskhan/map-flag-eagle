require 'rails_helper'

describe 'User' do
  it 'creates a custom map' do
    visit new_order_path

    expect(page).to have_css('#map')

    click_on 'Use This Map'


  end
end
