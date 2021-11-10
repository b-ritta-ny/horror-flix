class Api::V1::ReviewsController < ApplicationController

#POST /reviews
    def index
        @review = Review.new(review_params)

        if @review.save
            render json: ReviewSerializer.new(@review)
        else
            render json: { error: review.errors.messages }, status: 422
        end
    end

    def destroy
        @review = Review.find(params[:id])

    private

    def review_params 
        params.require(:review).permit(:title, :description, :score, :horror_movie_id, :user_id)
    end
end