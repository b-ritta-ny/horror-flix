class ReviewSerializer
  include JSONAPI::Serializer
  attributes :description, :rating, :horror_movie_id
end

