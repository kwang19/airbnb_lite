class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :listings_id
      t.float :price

      t.timestamps

    end
  end
end
