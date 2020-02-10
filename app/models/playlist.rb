class Playlist < ApplicationRecord
  belongs_to :user, optional: true
  has_many :playlists_songs
  has_many :songs, through: :playlists_songs
end
