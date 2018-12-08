# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  category    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cart_id     :bigint(8)
#

class Product < ApplicationRecord
  belongs_to :cart
  validates_presence_of :name, :description, :price, :category
  validates_length_of :name, minimum: 3, maximum: 63
  validates_length_of :description, minimum: 3, maximum: 1023
  validates_length_of :category, minimum: 3, maximum: 63
end
