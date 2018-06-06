require 'rails_helper'

describe 'User' do
  describe 'visits landing page' do
    it 'adds a map to the DB' do
      visit '/'

      expect(page).to have_content('Custom Laser Cut Maps!')
      expect(page).to have_css('#myCarousel')
    end
    it 'clicks on make it your own' do
      visit '/'

      click_on 'Make it your own!'

      expect(current_path).to eq("#{maps_new_path}")
    end
  end
end
