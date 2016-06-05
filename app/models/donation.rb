class Donation < Proposal
  belongs_to :beneficiary
  has_many :tests, as: :owner, source_type: "User"
  has_many :availabilities, through: :tests, source: :availability
end
