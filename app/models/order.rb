class Order < ApplicationRecord
  belongs_to :delivery
  belongs_to :user
end
