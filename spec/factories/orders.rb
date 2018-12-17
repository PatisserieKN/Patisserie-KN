# == Schema Information
#
# Table name: orders
#
#  id           :bigint(8)        not null, primary key
#  user_id      :bigint(8)
#  paid         :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  global_price :decimal(, )
#

FactoryBot.define do
  factory :order do
    association :user
    paid { false }
  end
end
