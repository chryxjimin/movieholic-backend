class Api::V1::MoviesController < ApplicationController
    def index
        @movies = Movie.all
        render json: @movies
    end

    def create
        @movie = Movie.new(movie_params)

        if @movie.save
            render json: @movie
        else 
            render json: {error: 'Error'}
        end
    end

    def show
        @movie = Movie.find(params[:id])
        render json: @movie
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
    end

    private

        def movie_params
            params.require(:movie).permit(:title, :year, :rated, :released, :runtime, :genre, :director, :writer, :actors, :language, :country, :awards, :poster, :imdbRating, :imdbVotes, :box_office, :production)
        end
end
