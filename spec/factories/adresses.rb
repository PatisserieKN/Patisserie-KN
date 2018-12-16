# == Schema Information
#
# Table name: adresses
#
#  id                          :bigint(8)        not null, primary key
#  street_number               :integer
#  route                       :text
#  locality                    :string
#  administrative_area_level_1 :string
#  country                     :string
#  postal_code                 :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  user_id                     :bigint(8)
#  full_address                :text
#

FactoryBot.define do
  factory :adress do
    street_number { Faker::Number.digit }
    route { Faker::Address.street_name }
    locality { Faker::Address.city }
    administrative_area_level_1 { Faker::Address.state }
    country { Faker::Address.country }
    postal_code { Faker::Number.number(5) }
    full_address { Faker::Address.full_address }
    association :user
  end
end
