class BookingsController < ApplicationController
  def new
  	@flight = Flight.find(params[:booking][:flight_id])
    @booking = @flight.bookings.build
  	@passenger_count = params[:booking][:passengers].to_i

  	@passenger_count.times{@booking.passengers.build}

  end

  def show
  	@booking_id = params[:id]
  	flight_id = Booking.find(@booking_id).flight_id
  	
  	@flight_info = Flight.find(flight_id)
  	
    @passengers = get_passengers

  end

  def create

    @booking = Booking.create(:flight_id=> booking_params[:flight_id])

  	number_of_passengers = passenger_params[:passengers_attributes].keys.count

    number_of_passengers.times do |index|
      pass_params = passenger_params[:passengers_attributes]["#{index}"]
      p = @booking.passengers.build(pass_params)
      p.save
    end

  	@flight_id = booking_params[:flight_id]

    redirect_to @booking
  
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,passengers_attributes: [:name, :email])
  end

  def passenger_params
  	params.require(:booking).permit(passengers_attributes: [:name, :email])
  end

  def get_passengers
    passenger_ids = Booking.find(@booking_id).passengers
  end

end
