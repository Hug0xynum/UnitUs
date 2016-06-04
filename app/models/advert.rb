class Advert < ActiveRecord::Base
  belongs_to: :sender, class_name: "Partner"
  belongs_to: :adress
end
