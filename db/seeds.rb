# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.create!(code: 'SFO')
Airport.create!(code: 'JFK')


Flight.create!(from_airport_id: 1, to_airport_id: 2, start: 3.days.from_now, duration: 120)
Flight.create!(from_airport_id: 2, to_airport_id: 1, start: 2.days.from_now, duration: 120)