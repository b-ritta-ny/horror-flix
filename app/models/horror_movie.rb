class HorrorMovie < ApplicationRecord
    has_many :horror_movie_genres
    has_many :genres, through: :horror_movie_genres

    has_many :reviews 
    has_many :users, through: :reviews 

    validates :title, :director, :user

end


