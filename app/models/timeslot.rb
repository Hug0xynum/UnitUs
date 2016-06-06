class Timeslot < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  belongs_to :availability
end
