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
        user = User.find(params[:user_id])
        new_playlist = Playlist.new(strong_params)
        user.playlists << new_playlist
        render json: createUserData(user, false, false)
      else     
         render json: {error: "you're not authorized" }
      end
    end 

    def destroy
       if authorized
         user = User.find(params[:user_id])
         Playlist.find(params[:playlist_id]).destroy
         render json: createUserData(user, false, false) 
       else
         render json: {error: "you're not authorized"}
       end 
    end 

    private 

    def strong_params
       params.require(:name)
    end 


  end
  