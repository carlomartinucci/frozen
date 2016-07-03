class User < ActiveRecord::Base
	has_many :grocery_lists
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def last_grocery_list
  	if grocery_lists.empty?
  		gl = GroceryList.create(user_id: self.id)
  	else
  		gl = grocery_lists.last
  	end
  	gl
  end
end
