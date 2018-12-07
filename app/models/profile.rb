# == Schema Information
#
# Table name: profiles
#
#  id           :bigint(8)        not null, primary key
#  first_name   :string
#  last_name    :string
#  phone_number :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint(8)
#

class Profile < ApplicationRecord
	validates :first_name, presence: true,
						   length: { minimum: 2, maximum: 100}
	validates :last_name, presence: true,
						   length: { minimum: 2, maximum: 100}
	validates :phone_number, presence: true

	belongs_to :user
end
