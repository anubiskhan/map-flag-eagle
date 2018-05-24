FactoryBot.define do
  factory :product do
    name Faker::Commerce.product_name
    description Faker::Myst.quote
    image "http://i.imgur.com/BCbxVui.png"
    price Faker::Commerce.product_price
  end
end
