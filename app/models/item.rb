# == Schema Information
#
# Table name: items
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  personalization :string
#  quantity        :integer
#  price           :decimal(, )
#  comment         :text
#  cart_id         :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :cart
  validates_presence_of :title, :quantity, :price
  validates_length_of :title, in: 3..63, message: "Problème avec la longueur du titre"
  validates_length_of :personalization, in: 3..60,
                      too_short: 'Votre message de personnalisation est trop court. Il doit contenir entre 3 et 60 caractères',
                      too_long: 'Votre message de personnalisation est trop long. Il doit contenir entre 3 et 60 caractères'
  validates_length_of :comment, in: 3..1000,
                      too_short: 'Votre commentaire est trop court. Il doit contenir entre 3 et 1000 caractères',
                      too_long: 'Votre commentaire est trop long. Il doit contenir entre 3 et 1000 caractères'
end
