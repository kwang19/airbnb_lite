class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.boolean :available
      t.integer :guests_id
      t.integer :listings_id

      t.timestamps

    end
  end
end
