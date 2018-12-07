FactoryBot.define do
  factory :product do
    name { "Cake" }
    description { "A beautiful cake" }
    price { "9.99" }
    category { "Pastry" }

    factory :ramdom_product do
      name { Faker::Food.fruits }
      description { Faker::Food.description }
      price { Faker::Number.decimal(2, 2) }
      category { Faker::Food.dish }
    end
  end
end
