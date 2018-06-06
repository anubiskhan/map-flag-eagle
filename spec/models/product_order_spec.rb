require 'rails_helper'

describe ProductOrder do
  describe 'attributes' do
    it { should validate_presence_of(:price) }
  end
  describe 'relationships' do
    it { should belong_to(:product) }
    it { should belong_to(:order) }
  end
end
