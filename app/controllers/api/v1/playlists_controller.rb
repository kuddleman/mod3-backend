class Api::V1::PlaylistsController < ApplicationController
    def index
      if authorized
       
      else
        render json: { errors: "You're not authorized" }.to_json
      end
    end
  end
  