class Product < ApplicationRecord
  # validates :name, presence: true,
  #                  length: { minimum: 3, maximum: 63 }
  #
  # validates :description, presence: true,
  #                         length: { minimum: 3, maximum: 1023 }
  #
  # validates :price, presence: true
  #
  # validates :category, presence: true,
  #                      length: { minimum: 3, maximum: 63 }
  

  validates_presence_of :name, :description, :price, :category
  validates_length_of :name, minimum: 3, maximum: 63
  validates_length_of :description, minimum: 3, maximum: 1023
  validates_length_of :category, minimum: 3, maximum: 63

end
