class FlightsController < ApplicationController
  def index
  	@airport_codes = Airport.all.map{ |airport| [ airport.code, airport.id ] }
  end
end
