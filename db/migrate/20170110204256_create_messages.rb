class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :listings_id
      t.integer :guests_id
      t.datetime :datetime
      t.text :content

      t.timestamps

    end
  end
end
