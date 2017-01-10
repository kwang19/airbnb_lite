class Guest < ApplicationRecord
  # Direct associations

  has_many   :bookings,
             :foreign_key => "guests_id",
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
