class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.string :photos
      t.string :description
      t.integer :host_id
      t.string :privateroomorentirehome
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms
      t.integer :guest_id
      t.integer :max_occupants
      t.string :city
      t.string :neighborhood
      t.string :policies
      t.float :default_price_per_night

      t.timestamps

    end
  end
end
