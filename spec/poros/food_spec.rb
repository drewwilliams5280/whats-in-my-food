require 'rails_helper'
RSpec.describe Food do
	it 'exists' do
		attrs = {:fdcId=>600987,
			:description=>"SWEET POTATOES",
			:dataType=>"Branded",
			:gtinUpc=>"070560951975",
			:publishedDate=>"2019-04-01",
			:brandOwner=>"The Pictsweet Company",
			:ingredients=>"SWEET POTATOES." }
		food = Food.new(attrs)
		expect(food).to be_a Food
		expect(food.code).to eq("070560951975")
		expect(food.description).to eq("SWEET POTATOES")
		expect(food.ingredients).to eq("SWEET POTATOES.")
		expect(food.brand).to eq("The Pictsweet Company")
	end
end