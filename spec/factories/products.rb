# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  category    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :product do
    name { Faker::Food.fruits }
    description { Faker::Food.description }
    price { Faker::Number.decimal(2, 2) }
    category { Faker::Food.dish }
  end
end
