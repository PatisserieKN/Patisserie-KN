# == Schema Information
#
# Table name: carts
#
#  id         :bigint(8)        not null, primary key
#  paid       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cart < ApplicationRecord
  has_many :products
  validates :paid, inclusion: { in: [true, false] }
end
