class Order < ApplicationRecord
  belongs_to :user
  has_many :items, as: :buyable
end
