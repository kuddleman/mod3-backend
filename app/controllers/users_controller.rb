class UsersController < ApplicationController
    def login
    end 
    
    def create
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
