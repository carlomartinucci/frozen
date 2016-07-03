# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#


food_category = FoodCategory.where(name: "Frutta").first_or_create
["Kiwi", "Pesche", "Banane"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
food_category = FoodCategory.where(name: "Verdura").first_or_create
["Zucchine", "Melanzane", "Peperoni"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
food_category = FoodCategory.where(name: "Pane").first_or_create
["Cracker", "Fette biscottate"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
food_category = FoodCategory.where(name: "Formaggi").first_or_create
["Grana", "Montasio", "Sottilette"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
food_category = FoodCategory.where(name: "Carne").first_or_create
["Prosciutto cotto", "Prosciutto crudo", "Salsiccie"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
food_category = FoodCategory.where(name: "Pesce").first_or_create
["Tonno", "Salmone"].each do |name|
	Food.where(name: name, food_category_id: food_category.id).first_or_create
end
