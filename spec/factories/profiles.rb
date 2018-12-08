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
    first_name { "MyFName" }
    last_name { "MyLName" }
    phone_number { "0123456789" }
    association :user
  end
end
