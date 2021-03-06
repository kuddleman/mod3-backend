class Api::V1::UsersController < ApplicationController
  def login
    password = params["user_info"]["password"]
    email = params["user_info"]["email"]
    user = User.find_by(email: email)
    if user and user.authenticate(password)
      # create token
      # send token and user data back
      render json: createUserData(user, true, true)
    else
      
      # send back error
      render json: { error: "invalid username / password combination" }
    end
  end

  def create
    new_user = User.new(strong_params)
    if new_user.save
      # user created, return token, user info

      render json: createUserData(new_user, true, true)
    else
      render json: { errors: ["sorry, something went wrong"] }.to_json
    end
  end

  def destroy
    if authorized
      user = User.find(params[:id])
      if user.destroy
        render json: { success: "user account destroyed!" }
      else
        render json: { error: "something went wrong. your account couldnt be deleted." }
      end
    else
      render json: { error: "you are not authorized to delete this resource" }
    end
  end

  def spotify_access_token
    token = params[:access_token]
    puts token
    if token
      # save token in db
      token = SpotifyAccessToken.create!(value: token)
    end
  end

  private

  def strong_params
    params.require(:user_info).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
