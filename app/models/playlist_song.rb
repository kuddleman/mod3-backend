class PlaylistSong < ApplicationRecord
  belongs_to :PlaylistSong
  belongs_to :playlist
end
