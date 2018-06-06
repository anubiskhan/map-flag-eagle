require 'rails_helper'

describe 'User' do
  describe 'visits landing page' do
    it 'adds a map to the DB' do
      visit '/'

      expect(page).to have_content('Custom Laser Cut Maps!')
      expect(page).to have_css('#myCarousel')
    end
  end
end
