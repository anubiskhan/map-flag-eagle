require 'rails_helper'

describe Contact do
  describe 'attributes' do
    it { should validate_presence_of(:address) }
    it { should belong_to(:user) }
  end
end
