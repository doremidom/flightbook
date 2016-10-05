class Flight < ApplicationRecord
	belongs_to :from_airport, :foreign_key => "from_airport_id", class_name: "Airport"
	belongs_to :to_airport, :foreign_key => "to_airport_id", class_name: "Airport"
	has_many :bookings

	def flight_date_formatted
     @flight_dates
    end

end
