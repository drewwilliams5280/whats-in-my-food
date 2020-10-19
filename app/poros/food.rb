class Food
	attr_reader :description, :code, :brand, :ingredients
	def initialize(food_info)
		@description = food_info[:description]
		@code = food_info[:gtinUpc]
		@brand = food_info[:brandOwner]
		@ingredients = food_info[:ingredients]
	end 
end