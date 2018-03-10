class Bathroom < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
