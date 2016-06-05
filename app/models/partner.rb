class Partner < User
#  has_many :timeslots, as: :owner
#  has_many :availabilities, through: :timeslots
  has_many :tests
  has_many :availabilities, through: :tests
  has_one :adress
  has_many :adverts # if it's a shop
  has_many :offers  # if it's an association
  has_many :donations # both
end
