class BookingsController < ApplicationController
  def new
  	@booking = Booking.new()
  	@flight_info = Flight.find(params[:booking][:flight_id])
  	passengers_amount = params[:booking][:passengers].to_i
  	@passenger_list = []
  	passengers_amount.to_i.times {@passenger_list.push(Passenger.new)}

  end

  def show
  	booking_id = params[:id]
  	flight_id = Booking.find(booking_id).flight_id
  	passenger_id = Booking.find(booking_id).passenger_id
  	@flight_info = Flight.find(flight_id)
  	@passenger_info = Passenger.find(passenger_id)

  end

  def create
  	booking_params[:passengers].each do |passenger|
  		puts "starting again"
  		@ob = Passenger.new(passenger_params(booking_params[:passengers]))
  		if @ob.save
  			flash[:success] = "good job"
  		else
  		 	puts @ob.errors.full_messages
  		end
  	end

  	@flight_id = booking_params[:booking][:flight_id]
  	@passenger_id = Passenger.find_by("email"=> booking_params[:passengers][:email]).id

  	@booking = Booking.new(:flight_id=> @flight_id, :passenger_id=>@passenger_id)
  	if @booking.save
  		redirect_to @booking
  	else
  		puts @booking.errors.full_messages
  		puts @flight_id
  	end
  end

  private

  def booking_params
  	params.permit(:utf8, :authenticity_token, :commit, booking:[:flight_id], passengers: [:name, :email])
  end

  def passenger_params(my_params)
  	my_params.permit(:name, :email)
  end

end
