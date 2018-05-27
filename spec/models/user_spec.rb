require 'rails_helper'

describe User do
  describe 'attributes' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:role) }
    it { should validate_presence_of(:google_sso_token) }
    it { should have_many(:contacts) }
  end
end
