class Adress < ActiveRecord::Base
  belongs_to :user
  has_many :adverts
end
