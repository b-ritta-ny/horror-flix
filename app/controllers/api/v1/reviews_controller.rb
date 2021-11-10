class Api::V1::ReviewsController < ApplicationController

#POST /reviews
    def index
    end

    private

    def review_params 
        params.require(:review).permit(:title, :description, :score, :airline_id)
    end
end