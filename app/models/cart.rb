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

class Cart < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :paid, inclusion: { in: [true, false] }
end
