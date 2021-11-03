class Review < ApplicationRecord
    belongs_to :user
    belongs_to :horror_movie

    validates :description, :rating, presence: true
end
