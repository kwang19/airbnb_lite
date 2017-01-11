class CreateBookingreviews < ActiveRecord::Migration
  def change
    create_table :bookingreviews do |t|
      t.integer :bookings_id
      t.integer :accuracy
      t.integer :communication
      t.integer :cleanliness
      t.integer :location
      t.integer :checkin
      t.integer :value
      t.text :body

      t.timestamps

    end
  end
end
