class Profile < ApplicationRecord
	validates :first_name, presence: true,
						   lenght: { minimum: 2, maximum: 100}
	validates :last_name, presence: true,
						   lenght: { minimum: 2, maximum: 100}
	validates :phone_number, presence: true
end
