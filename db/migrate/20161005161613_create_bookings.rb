class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :flight_id, index:true
      t.integer :passenger_id, index:true

      t.timestamps
    end
  end
end
