class CreatePlaylistSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_songs do |t|
      t.belongs_to :song 
      t.belongs_to :playlist
      t.timestamps
    end
  end
end
