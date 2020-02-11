class Api::V1::SongsController < ApplicationController
  def destroy
    if authorized
      song = Song.find(params[:id])
      user = User.find(params[:user_id])
      playlist = Playlist.find(params[:playlist_id])
      if song and playlist.songs.delete(song) # remove song association with play list
        # if song is not on any playlists, delete it
        if song.playlists.empty?
          song.destroy
        end 

        render json: createUserData(user, false)
      else
        render json: { error: "the song couldnt be deleted from playlist" }
      end
    end
  end

  def create
    #byebug

    #byebug
    if authorized
      # create the song
      user = User.find(params[:user_id])
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
