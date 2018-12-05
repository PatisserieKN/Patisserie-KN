class Cart < ApplicationRecord
  validates :paid, inclusion: { in: [true, false] }
end
