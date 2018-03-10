class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :bathrooms,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
