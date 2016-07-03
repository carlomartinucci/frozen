class Food < ActiveRecord::Base
  belongs_to :food_category
  has_many :list_items
  has_many :grocery_lists, through: :list_items

end
