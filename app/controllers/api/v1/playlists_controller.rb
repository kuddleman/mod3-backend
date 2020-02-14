class Api::V1::PlaylistsController < ApplicationController
  def index
    token = authenticated

    if token
      render json: createUserData(User.find(token), false, false)
    else
      render json: { error: "You're not authorized" }.to_json
    end
  end

  def create
    if authorized
      #byebug
      user = User.find(params[:user_id])
      #byebug
      new_playlist = Playlist.new(title: strong_params)

      user.playlists << new_playlist
      #byebug
      render json: createUserData(user, false, false)
    else
      render json: { error: "you're not authorized" }
    end
  end

  def destroy
    if authorized
      #byebug
      user = User.find(params[:user_id])
      Playlist.find(params[:id]).destroy
      render json: createUserData(user, false, false)
    else
      render json: { error: "you're not authorized" }
    end
  end

  private

  def strong_params
    params.require(:title)
  end
end
