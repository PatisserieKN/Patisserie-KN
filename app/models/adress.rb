# == Schema Information
#
# Table name: adresses
#
#  id                          :bigint(8)        not null, primary key
#  street_number               :integer
#  route                       :text
#  locality                    :string
#  administrative_area_level_1 :string
#  country                     :string
#  postal_code                 :integer
#  created_at                  :datetime         not null
#  updated_at                  :datetime         not null
#  user_id                     :bigint(8)
#

class Adress < ApplicationRecord
  validates :street_number, presence: true
  validates :route, presence: true
  validates :locality, presence: true
  validates :administrative_area_level_1, presence: true
  validates :country, presence: true
  validates :postal_code, presence: true
  
  belongs_to :user
end
