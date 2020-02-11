class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :artist, :album, :genre
  
end
