FactoryBot.define do
  factory :product do
    cart
    name { Faker::Food.fruits }
    description { Faker::Food.description }
    price { Faker::Number.decimal(2, 2) }
    category { Faker::Food.dish }
  end
end
