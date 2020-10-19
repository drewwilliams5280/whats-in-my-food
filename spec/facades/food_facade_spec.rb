require 'rails_helper'
RSpec.describe 'Food Facade' do
  it 'returns a list of food objects from search', :vcr do
		foods = FoodFacade.search('sweet potatoes')
    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.brand).to be_a(String)
	end
end