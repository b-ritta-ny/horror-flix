class HorrorMovieSerializer
  include JSONAPI::Serializer
  attributes :poster, :title, :director, :year_released

end