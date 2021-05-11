class Api::V1::MoviesController < ApplicationController
    def index
        @movies = Movie.all
        render json: @movies
    end

    def create
        @movie = Movie.new(movie_params)

        if @movie.save
            render json: @account
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
            params.require(:movie).permit(:title, :year, :rated, :released, :genre, :director, :writer, :language, :box_office)
        end
end
