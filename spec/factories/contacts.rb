FactoryBot.define do
  factory :contact do
    address "#{Faker::Address.street_address} #{Faker::Address.city}, #{Faker::Address.state} #{Faker::Address.zip} "
    phone Faker::PhoneNumber.phone_number
    user
  end
end
