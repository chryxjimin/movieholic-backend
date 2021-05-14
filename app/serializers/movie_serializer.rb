class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :rated, :released, :genre, :director, :writer, :language, :box_office, :actors, :poster
  has_many :reviews

end
