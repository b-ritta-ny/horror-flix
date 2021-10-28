class Api::V1::HorrorMoviesController < ApplicationController

# GET /trips

    def index
        if logged_in?
            @horror_movies = current_user.horror_movies
            render json: HorrorMovieSerializer.new(@horror_movies)
        else 
            render json: {
                error: "You must be logged in to see your movies."
            }
        end
    end


end
