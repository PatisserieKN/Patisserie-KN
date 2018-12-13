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
  validates :name, length: { minimum: 3, maximum: 63, message: 'minimum 3 caractères and maximum 63 caractères'}
  validates :description, length: { minimum: 3, maximum: 1023, message: 'minimum 3 caractères and maximum 1023 caractères'}
  validates :category, length: { minimum: 3, maximum: 63, message: 'minimum 3 caractères and maximum 63 caractères'}
end
