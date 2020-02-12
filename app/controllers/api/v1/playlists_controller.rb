class Api::V1::PlaylistsController < ApplicationController
    def index
      if authorized
        render json: createUserData(User.find(params[:user_id]), false) 
      else
        render json: { error: "You're not authorized" }.to_json
      end
    end

    def create
      
      if authorized
        user = User.find(params[:user_id])
        new_playlist = Playlist.new(strong_params)
        user.playlists << new_playlist
        render json: createUserData(user, false)
      else     
         render json: {error: "you're not authorized" }
      end
      
     
      
    end 

    private 

    def strong_params
       params.require(:name)
    end 


  end
  