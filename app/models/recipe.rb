class Recipe
 include HTTParty
  
 hostport 	= ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com/api/'
 key_value 	= ENV['FOOD2FORK_KEY']

 base_uri 'http://food2fork.com/api/'
 default_params key: key_value
 format :json
 
 def self.for term
 get("/search", query: { q: term})["recipes"]
 end
end