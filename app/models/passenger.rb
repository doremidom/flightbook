class Passenger < ApplicationRecord
	has_many :bookings

	validates_uniqueness_of :email


end
