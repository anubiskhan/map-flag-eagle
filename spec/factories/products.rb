FactoryBot.define do
  factory :product do
    name 'A Name'
    description Faker::Fallout.quote
    image "http://i.imgur.com/BCbxVui.png"
    price 3.50
  end
end
