class Recipe 
	include HTTParty
	ENV ["FOOD2FORK_KEY"] = 'db761cbf1207ba07c9218a20df52787d'
	base_uri 'http://food2fork.com/api'
	default_params key: ENV["FOOD2FORK_KEY"]
	format :json

	def self.for term
		get("/search", query: { q: term})["recipes"]
	end
end 