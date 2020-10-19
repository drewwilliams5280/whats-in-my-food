class FoodFacade
	def self.search(search_term)
		FoodService.search(search_term)[:foods].map do |food_info|
			Food.new(food_info)
		end
	end
end