class ReviewSerializer
  include JSONAPI::Serializer
  attributes :title, :description, :rating, :horror_movie_id, :name
end

