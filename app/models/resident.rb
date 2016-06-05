class Resident < Person
  #has_many :timeslots, as: :owner
  # has_many :availabilities , through: :timeslots,  source: "Availability"
  has_many :tests, as: :owner, source_type: "User"
  has_many :availabilities , through: :tests, source: :availability
  has_many :adresses
  has_many :donations
end
