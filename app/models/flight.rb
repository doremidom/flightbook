class Flight < ApplicationRecord
	belongs_to :from_airport, :foreign_key => "from_airport_id", class_name: "Airport"
	belongs_to :to_airport, :foreign_key => "to_airport_id", class_name: "Airport"

	def self.get_starts
		flight_dates = Flight.find_by_sql("select distinct start from flights")
	end

	def flight_date_formatted
     start.strftime("%m/%d/%Y")
    end

end
