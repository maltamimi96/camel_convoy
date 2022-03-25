class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :category

enum condition: {Brand_new:1,Like_new:2,Used:3,Damaged:4}

end
