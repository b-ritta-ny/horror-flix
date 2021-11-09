class HorrorMovie < ApplicationRecord
    has_many :horror_movie_genres
    has_many :genres, through: :horror_movie_genres

    has_many :reviews 
    has_many :users, through: :reviews 

    validates :title, :director, presence: true

    before_create :slugify

    def slugify
        self.slug = title.parameterize
    end

    def avg_score
        self.reviews.average(:rating).round(2).to_f
    end

end


 