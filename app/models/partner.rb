class Partner < User
  has_one :adress
  has_many :availabilities, through: :timesheet
  has_many :adverts # if it's a shop
  has_many :offers  # if it's an association
  has_many :donations # both
end
