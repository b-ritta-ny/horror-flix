class HorrorMovie < ApplicationRecord
    belongs_to :user
    has_many :horror_movie_genres
    has_many :genres, through: :horror_movie_genres
end
