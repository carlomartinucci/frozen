class ListItem < ActiveRecord::Base
  belongs_to :grocery_list
  belongs_to :food
end
