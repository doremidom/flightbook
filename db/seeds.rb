# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.create!(code: 'SFO')
Airport.create!(code: 'JFK')


Flight.create!(from_airport_id: 1, to_airport_id: 2, date: Date.tomorrow, departure_time: 1530, duration: 120)
Flight.create!(from_airport_id: 2, to_airport_id: 1, date: Date.tomorrow, departure_time: 0530, duration: 120)
Flight.create!(from_airport_id: 1, to_airport_id: 2, date: Date.tomorrow, departure_time: 1730, duration: 120)
Flight.create!(from_airport_id: 2, to_airport_id: 1, date: Date.tomorrow, departure_time: 0230, duration: 120)