class Booking < ApplicationRecord
  # Direct associations

  has_one    :bookingreview,
             :foreign_key => "bookings_id",
             :dependent => :destroy

  belongs_to :listings

  belongs_to :guests

  # Indirect associations

  # Validations

end
