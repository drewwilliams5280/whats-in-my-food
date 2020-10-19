class FoodService
	def self.search(search_term)
		to_json('/fdc/v1/foods/search', { query: search_term, pageSize: '10', pageNumber: '1'} ) 
	end

	def self.to_json(url, params = {})
    private
    response = conn.get(url) do |f|
      f.params = params
      f.params[:api_key] = ENV['FOOD_API_KEY']
    end
    JSON.parse(response.body, symbolize_names: true)
  end

	def self.conn
    private
    Faraday.new(url: 'https://api.nal.usda.gov')
  end
end