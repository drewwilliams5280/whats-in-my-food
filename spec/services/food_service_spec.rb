require 'rails_helper'
RSpec.describe FoodService do
	it 'returns top ten results when searching', :vcr do
		foods = FoodService.search('sweet potatoes')[:foods]
		expect(foods).to be_an Array
		food_data = foods.first
		expect(food_data).to be_a Hash
		expect(food_data[:description]).to be_a(String)
		expect(food_data[:gtinUpc]).to be_a(String)
		expect(food_data[:brandOwner]).to be_a(String)
		expect(food_data[:ingredients]).to be_a(String)
	end
end