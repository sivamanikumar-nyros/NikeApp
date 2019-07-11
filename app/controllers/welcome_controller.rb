class WelcomeController < ApplicationController
	
	def index
    	@men_accessories_categories = MenAccessoriesCategory.all
    	@men_clothes_categories = MenClothesCategory.all
    	@men_shoe_categories = MenShoeCategory.all
  	end
end