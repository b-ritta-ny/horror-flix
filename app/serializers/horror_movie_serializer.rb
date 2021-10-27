class HorrorMovieSerializer
  include JSONAPI::Serializer
  attributes :poster, :title, :director, :rating, :date_watched
end


