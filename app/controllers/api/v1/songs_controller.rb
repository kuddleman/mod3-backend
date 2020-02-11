class Api::V1::SongsController < ApplicationController
  def create
    #byebug
    user = User.find(params[:user_id])
    #byebug
    if authorized
      # create the song

      song = Song.new(strong_params)
      if song.save!
        # add song to playlist
        playlist = Playlist.find(params[:playlist_id])
        playlist.songs << song
        # return user data
        render json: createUserData(user, false)
      else
        render json: { error: "unable to add song to your playlist" }
      end
    else
      render json: { error: "sorry, you arent authorized to create a new song" }
    end
  end

  private

  def strong_params
    params.permit(:name, :album, :genre, :artist)
  end
end
