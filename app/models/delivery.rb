class Delivery < ApplicationRecord
    belongs_to :user
    has_one_attached :picture
    has_one :delivery_driver
    has_one :area
    has_one :active_delivery


validates_presence_of :title,:by,:packages,:pay


end
