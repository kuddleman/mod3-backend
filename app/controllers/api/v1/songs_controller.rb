class Api::V1::SongsController < ApplicationController
    
    
    def create 

        byebug
        user_id = params[:user_id]
        if authorized
            playlist = Playlist.find(params['playlist_id'])

        else 
            render json: {error: "sorry, you arent authorized to create a new song"} 
        end 

       
    end
    
    

   private

   def strong_params

    params.permit(:name, :album, :genre)

   end 

end
