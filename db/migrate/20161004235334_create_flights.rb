class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id, index: true
      t.integer :to_airport_id, index: true
      t.datetime :start
      t.integer :duration
      

      t.timestamps
    end
  end
end
