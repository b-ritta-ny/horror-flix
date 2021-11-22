class HorrorMovieSerializer
  include JSONAPI::Serializer
  attributes :poster, :title, :director, :year_released, :slug

  has_many :reviews

  attribute :average_score do |object|
    (object.avg_score)
  end
end