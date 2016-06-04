class Resident < Person
  has_many: :adresses
  has_many: :availabilities, through: :timesheet
  has_many: :donations
end
