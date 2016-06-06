class Adress < ActiveRecord::Base
  belongs_to :owner, polymorphic: true #class_name: 'User'
  has_many :adverts
end
