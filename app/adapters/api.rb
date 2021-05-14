# require_relative '../../models/cuisine.rb'
require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class Api

    
    API_KEY = ENV['API_KEY']
    
    def get_movies
        # puts API_KEY
        url = "http://www.omdbapi.com/?t=life+in+a+metro&apikey=#{API_KEY}"
        binding.pry
        uri = URI.parse(url)
        response_body = uri.read
        data = JSON.parse(response_body)
        
    end

end


Api.new.get_movies