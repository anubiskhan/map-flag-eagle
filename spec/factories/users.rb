FactoryBot.define do
  factory :user do
    name Faker::Fallout.character
    email Faker::Internet.email
    role 0
    google_sso_token SecureRandom.urlsafe_base64
  end
end
