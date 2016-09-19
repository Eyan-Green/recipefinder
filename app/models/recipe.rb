class Recipe
 include HTTParty
 
 hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
 user_key = ENV['FOOD2FORK_KEY'] 
 
 base_uri 'http://food2fork.com/api/search'
 default_params key: user_key
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end