class Availability < ActiveRecord::Base
  has_many :timesheet, class_name: 'Timeslot'
  has_many :residents, class_name: 'Resident', through: :timesheet, source: :owner, source_type: 'User'
  has_many :partners, class_name: 'Partner', through: :timesheet, source: :owner, source_type: 'User'
  has_many :donations, class_name: 'Donation', through: :timesheet, source: :owner, source_type: 'Advert'
end
