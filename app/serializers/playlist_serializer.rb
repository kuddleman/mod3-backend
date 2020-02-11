class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :title, :songs
  belongs_to :user
  
end
