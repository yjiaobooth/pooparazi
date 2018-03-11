class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :nullify

  # Indirect associations

  has_many   :bathrooms,
             :through => :comments,
             :source => :bathroom

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
