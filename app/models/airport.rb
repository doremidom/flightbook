class Airport < ApplicationRecord
	has_many :departing_flights, :foreign_key => "from_airport_id", class_name: "Flight"
	has_many :arriving_flights, :foreign_key => "to_airport_id", class_name: "Flight"

	def self.airport_codes
		Airport.find_by_sql("select distinct code from airports")
	end


end
