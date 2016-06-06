class Advert < ActiveRecord::Base
  belongs_to :sender, polymorphic: true
  belongs_to :adress
end
