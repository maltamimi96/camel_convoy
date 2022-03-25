class Delivery < ApplicationRecord
    belongs_to :user
    has_one_attached :picture
    has_one :order


validates_presence_of :title,:by,:packages,:pay


end
