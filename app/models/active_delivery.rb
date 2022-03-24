class ActiveDelivery < ApplicationRecord
  belongs_to :delivery
  belongs_to :driver
end
