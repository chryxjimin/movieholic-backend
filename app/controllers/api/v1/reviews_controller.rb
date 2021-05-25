class Api::V1::ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        render json: @reviews
    end

    def create
        @movie = Movie.find(params[:movie_id])
        @review = @movie.reviews.new(review_params)

        if @review.save
            render json: @movie
        else 
            render json: {error: 'Error'}
        end
    end


    def destroy
        @review = Review.find(params[:movie_id])
        @review.destroy
        render json: @review.movie
    end

    private

        def review_params
            params.require(:review).permit(:description, :movie_id)
        end
end
