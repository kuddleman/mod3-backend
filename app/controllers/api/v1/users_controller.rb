class Api::V1::UsersController < ApplicationController
  
  def login
    password = params["user_info"]["password"]
    email = params["user_info"]["email"]
    user = User.find_by(email: email)
    if user and user.authenticate(password)
      # create token
      # send token and user data back
      render json: { token: createToken(user.id),
        user: ActiveModel::SerializableResource.new(user)}.to_json

    else 
      # send back error
      render json: {errors: "invalid username / password combination"}
    end    
  end

  def create
    #byebug
    new_user = User.new(strong_params)
    if new_user.save!
      # user created, return token, user info

      render json: { token: createToken(new_user.id),
                    user: ActiveModel::SerializableResource.new(new_user)}.to_json
    else
      render json: { errors: "sorry, something went wrong" }.to_json
    end
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def strong_params
    params.require(:user_info).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end
end
