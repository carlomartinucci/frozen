class PagesController < ApplicationController
	def index
		@grocery_list = current_user.last_grocery_list
	end
end
