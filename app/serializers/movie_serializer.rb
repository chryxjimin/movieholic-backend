class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :rated, :released, :runtime, :genre, :director, :writer, :actors, :language, :country, :awards, :imdbRating, :imdbVotes, :box_office, :production, :poster
  has_many :reviews

end
