# == Schema Information
#
# Table name: items
#
#  id              :bigint(8)        not null, primary key
#  personalization :string
#  quantity        :integer
#  price           :decimal(, )
#  comment         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  product_id      :bigint(8)
#  buyable_type    :string
#  buyable_id      :bigint(8)
#

FactoryBot.define do
  factory :item do
    buyable { |a| a.association(:user) }
    association :product
    personalization { Faker::Lorem.sentence }
    quantity { Faker::Number.digit }
    price { Faker::Number.decimal(2, 2) }
    comment { Faker::Food.description }
  end
end
