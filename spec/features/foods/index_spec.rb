require "rails_helper"

RSpec.describe "Foods index page" do
	it "ten most relevant foods for seach query" do
		visit root_path
		expect(page).to have_content("Ingredient Search")
		fill_in :q, with: 'sweet potatoes'
		click_on 'Search'
		expect(current_path).to eq(foods_path)
		expect(page).to have_content("Results: 10")

		within(first('.food')) do
			expect(page).to have_css('.code')
			expect(page).to have_css('.description')
			expect(page).to have_css('.brand')
			expect(page).to have_css('.ingredients')
		end
	end
end