require 'open-uri'
require 'net/http'
require 'json'
require 'pry'

class Api

    
    API_KEY = ENV['API_KEY']
    
    def get_movies
        # puts API_KEY
        url = "http://www.omdbapi.com/?s=batman&apikey=#{API_KEY}"
        uri = URI.parse(url)
        response_body = uri.read
        data = JSON.parse(response_body)
        data["Search"].each do |movie|
            title = movie["Title"]
            year = movie["Year"]
            poster = movie["Poster"]
            # binding.pry
            Movie.create(title: title, year: year, poster: poster)
        end
    end

end


# Api.new.get_movies