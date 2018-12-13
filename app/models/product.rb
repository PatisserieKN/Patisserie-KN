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
  validates_length_of :name, in: 3..63, too_short: 'minimum 3 caractères', too_long: 'maximum 63 caractères'
  validates_length_of :description, in: 3..1023, too_short: 'minimum 3 caractères', too_long: 'maximum 1023 caractères'
  validates_length_of :category, in: 3..63, too_short: 'minimum 3 caractères', too_long: 'maximum 63 caractères'

end
