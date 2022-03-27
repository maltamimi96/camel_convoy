class Product < ApplicationRecord
    has_many :product_items
    has_one_attached :picture




validates :title , :description, presence: true 
validates :price ,numericality: {greather_than_or_equal_to: 0.01}


def ensure_not_product_item
    if product_items.empty?
        return true
    else
        errors.add(:base,"you have no items")
        return false
    end

end

end
