class Product < ApplicationRecord
  has_many :products
  validates :name, presence: true,
                   length: { minimum: 3, maximum: 63 }

  validates :description, presence: true,
                          length: { minimum: 3, maximum: 1023 }

  validates :price, presence: true

  validates :category, presence: true,
                       length: { minimum: 3, maximum: 63 }
end
