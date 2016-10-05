class FlightsController < ApplicationController

  def index
  	@airport_codes = get_airport_codes
  	@flight_dates = get_flight_dates


  	@flights = find_flights
  end


  private

  def flight_params
  	params.permit(:from_airport, :to_airport, :passengers, :flight_date)
  end

  def find_flights
  	@flights = Flight.where("from_airport_id =? AND to_airport_id=? AND date =?", params[:from_airport], params[:to_airport], params[:flight_date])
  end

  def format_date(time)
  	date = Time.zone.parse(time)
  end

  def get_airport_codes
  	Airport.all.map{ |airport| [ airport.code, airport.id ] }
  end

  def get_flight_dates
  	flight_dates = Flight.all.map{ |flight| [flight.date.strftime("%m/%d/%Y"), flight.date  ] }.uniq
  end


end
