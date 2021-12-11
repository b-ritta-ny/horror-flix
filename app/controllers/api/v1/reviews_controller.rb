class Api::V1::ReviewsController < ApplicationController

#POST /api/v1/reviews
    def create

    end

    def index
        @review = Review.new(review_params)

        if @review.save
            render json: ReviewSerializer.new(@review)
        else
            render json: { error: @review.errors.messages }, status: 422
        end
    end

    def destroy
        @review = Review.find(params[:id])

        if review.destroy_all
            head :no_content
        else
            render json: { error: @review.errors.messages }, status: 422

    private

    def horror_movie
        @horror_movie ||= HorrorMovie.find(params[:horror_movie_id])
    end

    def review_params 
        params.require(:review).permit(:title, :description, :score, :horror_movie_id, :user_id)
    end
end