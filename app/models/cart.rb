class Cart < ApplicationRecord

    has_many :product_items,dependent: :destroy
end
