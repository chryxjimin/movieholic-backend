class Api::V1::MoviesController < ApplicationController
    def index
        movie = Movie.all
        render json: movie
    end

    private

        def movie_params
            params.require(:movie).permit(:title, :year, :rated, :released, :genre, :director, :writer, :language, :box_office)
        end
end
