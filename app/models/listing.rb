class Listing < ApplicationRecord
  mount_uploader :photos, PhotoUploader

  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "listings_id",
             :dependent => :destroy

  has_many   :availabilities,
             :foreign_key => "listings_id",
             :dependent => :destroy

  has_many   :messages,
             :foreign_key => "listings_id",
             :dependent => :destroy

  has_many   :bookings,
             :foreign_key => "listings_id",
             :dependent => :destroy

  belongs_to :host

  # Indirect associations

  # Validations

end
