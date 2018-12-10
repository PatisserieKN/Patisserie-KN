# == Schema Information
#
# Table name: carts
#
#  id         :bigint(8)        not null, primary key
#  paid       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

FactoryBot.define do
  factory :cart do
    user
    paid { false }
  end
end
