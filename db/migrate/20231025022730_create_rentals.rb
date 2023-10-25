class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :name
      t.string :rent
      t.string :add
      t.string :years
      t.text :note

      t.timestamps
    end
  end
end
