class Beneficiary < Person
  has_many :donations
  has_many :reservations, -> {  where is_given: false, is_reserved: true }, class_name: 'Donation'
end
