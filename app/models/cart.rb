class Cart < ApplicationRecord
  belongs_to :cart
  validates :paid, inclusion: { in: [true, false] }
end
