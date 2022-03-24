class Driver < ApplicationRecord
  belongs_to :user
  has_many :active_delivery

  validates_presence_of :vehicle_type,:insurance

 
end
