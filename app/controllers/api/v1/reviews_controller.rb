class Api::V1::ReviewsController < ApplicationController

    def index
        @reviews = review.all
        render json: @reviews
    end

    def create
        @review = Review.new(review_params)

        if @review.save
            render json: @review
        else 
            render json: {error: 'Error'}
        end
    end

    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end

    private

        def review_params
            params.require(:review).permit(:description, :movie_id)
        end
end
