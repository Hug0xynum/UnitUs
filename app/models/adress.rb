class Adress < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  has_many :adverts
end
