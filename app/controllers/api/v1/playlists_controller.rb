class Api::V1::PlaylistsController < ApplicationController
    def index
      if authorized
        render json: { lists: ["list1", "list2"] }.to_json
      else
        render json: { errors: "You're not authorized" }.to_json
      end
    end
  end
  