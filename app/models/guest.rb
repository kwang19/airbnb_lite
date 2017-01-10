class Guest < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "guests_id",
             :dependent => :destroy

  has_many   :bookings,
             :foreign_key => "guests_id",
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
