class Resident < Person
  has_many :timesheet, class_name: 'Timeslot', as: :owner, source_type: "User"
  has_many :availabilities , through: :timesheet
  has_many :adresses, as: :owner
  has_many :donations, as: :sender
end
