class Api::V1::HorrorMoviesController < ApplicationController

# GET /api/v1/horror_movies
    def index
        if logged_in?
            @horror_movies = current_user.horror_movies
            render json: HorrorMovieSerializer.new(@horror_movies, options)
        elsif 
            @horror_movies = HorrorMovie.all
            render json: HorrorMovieSerializer.new(@horror_movies, options)
        else
            render json: {
                error: "You must be logged in to see your movies."
            }
        end
    end

    #DONE: add a condition where if user isn't logged in, then display all the movies in the database with average score
    #also need to add route that isn't nested under user module.

# GET /api/v1/horror_movies/:slug
    def show
        @horror_movie = HorrorMovie.find_by(slug: params[:slug])
        render json: HorrorMovieSerializer.new(@horror_movie, options)
    end


# POST /api/v1/horror_movies

    def create
    byebug
    @horror_movie = HorrorMovie.create(movie_params)

    if @horror_movie.save
      render json:  HorrorMovieSerializer.new(@horror_movie), status: :created
    else
      error_resp = {
        error: @horror_movie.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

    private

    # Used For compound documents with fast_jsonapi
    def options
        @options ||= { include: %i[reviews] }
    end


end
