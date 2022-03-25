class Driver < ApplicationRecord
  belongs_to :user
  has_many :orders


  validates_presence_of :vehicle_type,:insurance

 
end
