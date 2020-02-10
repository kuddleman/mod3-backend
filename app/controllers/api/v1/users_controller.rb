class Api::V1::UsersController < ApplicationController
  def login
    byebug
  end

  def create
    #byebug
    new_user = User.new(strong_params)
    if new_user.save!
      # user created, return token, user info

      render json: { token: createToken(new_user.id),
                    user: ActiveModel::SerializableResource.new(new_user)}.to_json
    else
      render json: { failure: "sorry, something went wrong" }.to_json
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
