module FoodsHelper
	def food_name_with_link(food, grocery_list)
		link_to food.name, add_to_list_foods_path(food_id: food.id, grocery_list_id: grocery_list.id), remote: true
	end
end
