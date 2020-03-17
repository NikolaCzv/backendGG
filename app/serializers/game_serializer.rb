class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :gameId, :released_date

  has_many :reviews, include_nested_associations: true
end
