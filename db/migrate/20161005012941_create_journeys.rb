class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.belongs_to :airport, index: true
      t.belongs_to :flight, index: true

      t.timestamps
    end
  end
end
