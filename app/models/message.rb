class Message < ApplicationRecord
  # Direct associations

  belongs_to :listings

  belongs_to :guests

  # Indirect associations

  # Validations

end
