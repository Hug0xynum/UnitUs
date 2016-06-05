class Availability < ActiveRecord::Base
#  has_many :timeslots
#  has_many :donations, through: :timeslots, source: 'donation'
#  has_many :users, through: :timeslots, source: 'user'
  has_many :tests# as: :owner
  has_many :donations, through: :tests, source: :owner, source_type: 'Donation'
  has_many :users, through: :tests, source: :owner, source_type: 'User'
  #   has_many :users, through: :tests, :conditions => { :type => 'Person' }
end
