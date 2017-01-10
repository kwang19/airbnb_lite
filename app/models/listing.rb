class Listing < ApplicationRecord
  # Direct associations

  has_many   :bookings,
             :foreign_key => "listings_id",
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
