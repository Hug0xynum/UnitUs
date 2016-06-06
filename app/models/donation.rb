class Donation < Proposal
  belongs_to :beneficiary
  belongs_to :product
  has_many :timesheet, class_name: 'Timeslot', as: :owner, source_type: "Advert"
  has_many :availabilities, through: :timesheet
end
