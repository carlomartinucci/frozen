class GroceryList < ActiveRecord::Base
  belongs_to :user
  has_many :list_items
  has_many :foods, through: :list_items

  def food_list
  	if foods
  		body = foods.pluck(:name).join('<br>')
  	else
  		body = ''
  	end
  	["Lista ##{self.id}", body].join('<br>').html_safe
  end
end
