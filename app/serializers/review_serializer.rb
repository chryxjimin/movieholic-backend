class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :description
  belongs_to :movie
end
