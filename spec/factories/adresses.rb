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
#

FactoryBot.define do
  factory :adress do
    street_number { 1 }
    route { "MyText" }
    locality { "MyString" }
    administrative_area_level_1 { "MyString" }
    country { "MyString" }
    postal_code { 1 }
  end
end
