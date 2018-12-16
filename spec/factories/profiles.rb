# == Schema Information
#
# Table name: profiles
#
#  id           :bigint(8)        not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint(8)
#

FactoryBot.define do
  factory :profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::Number.number(10) }
    association :user
  end
end
