class Review < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :horror_movie

    validates :description, :title, presence: true
end
