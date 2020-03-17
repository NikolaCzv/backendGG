class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :game_id
end
