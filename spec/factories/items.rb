# == Schema Information
#
# Table name: items
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  personalization :string
#  quantity        :integer
#  price           :decimal(, )
#  comment         :text
#  cart_id         :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :item do
    title { "MyString" }
    personalization { "MyString" }
    quantity { 1 }
    price { "9.99" }
    comment { "MyText" }
    cart_id { nil }
  end
end
