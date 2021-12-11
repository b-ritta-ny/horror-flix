class Api::V1::ReviewsController < ApplicationController

#POST /reviews
    def create
        @review = horror_movie.reviews.new(review_params)
        byebug
        if @review.save
     
            render json: ReviewSerializer.new(@review).serialized, status: :created
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
        end
    end

    private

    def horror_movie
        horror_movie ||= HorrorMovie.find(params[:horror_movie_id])
    end

    def review_params 
        params.require(:review).permit(:title, :description, :horror_movie_id, :user_id, :rating)
    end
end
