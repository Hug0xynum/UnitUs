class Donation < Proposal
  belongs_to :beneficiary
  has_many :availabilities, through: :timesheet
end
