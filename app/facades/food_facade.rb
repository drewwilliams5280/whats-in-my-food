class FoodFacade
	def self.search(search_term)
		FoodService.search(search_term)[:foods][0..9].map do |food_info|
			Food.new(food_info)
		end
	end
end