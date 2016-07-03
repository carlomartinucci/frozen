class FoodsController < ApplicationController
	def search
		search = params[:q]
		@grocery_list = GroceryList.find(params[:grocery_list_id])
		if search.blank?
			@foods = Food.where('0=1')
		else
			@foods = Food.where('name like ?', "%#{search}%")
		end
	end

	def create
		name = params[:name]
		category = FoodCategory.where(name: "Altro").first
		Food.create(name: name, food_category_id: category.id)
	end

	def add_to_list
		food = Food.find(params[:food_id])
		@grocery_list = GroceryList.find(params[:grocery_list_id])
		list_item = ListItem.where(food_id: food.id, grocery_list_id: @grocery_list.id).first_or_create
	end
end
