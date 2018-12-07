class Cart < ApplicationRecord
  has_many :products
  validates :paid, inclusion: { in: [true, false] }
end
