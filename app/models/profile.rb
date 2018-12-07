class Profile < ApplicationRecord
	validates :first_name, presence: true,
						   length: { minimum: 2, maximum: 100}
	validates :last_name, presence: true,
						   length: { minimum: 2, maximum: 100}
	validates :phone_number, presence: true

	belongs_to :user
end
