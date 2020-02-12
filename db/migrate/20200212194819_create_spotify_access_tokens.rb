class CreateSpotifyAccessTokens < ActiveRecord::Migration[6.0]
  def change
    create_table :spotify_access_tokens do |t|
      t.string :value

      t.timestamps
    end
  end
end
