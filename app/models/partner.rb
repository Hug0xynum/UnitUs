class Partner < User
  has_many :timesheet, class_name: 'Timeslot', as: :owner, source_type: "User"
  has_many :availabilities, through: :timesheet
  has_one :adress, as: :owner
  has_many :adverts, as: :sender # if it's a shop
  has_many :offers, as: :sender  # if it's an association
  has_many :donations, as: :sender # both
end
