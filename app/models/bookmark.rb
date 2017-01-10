class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :listings

  belongs_to :guest

  # Indirect associations

  # Validations

end
