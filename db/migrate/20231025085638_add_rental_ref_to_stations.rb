class AddRentalRefToStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :stations, :rental, null: false, foreign_key: true
  end
end
