class HorrorMovieSerializer
  include JSONAPI::Serializer
  attributes :poster, :title, :director, :date_watched
end


