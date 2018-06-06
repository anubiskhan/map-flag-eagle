require 'rails_helper'

describe Order do
  describe 'attributes' do
    it { should validate_presence_of(:total) }
  end
  describe 'relationships' do
    it { should have_many(:product_orders) }
    it { should have_many(:products).through(:product_orders) }
  end
end
