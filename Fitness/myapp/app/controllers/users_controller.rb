class UsersController < ApplicationController

    def login_form
    end
    
    def login
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
    end
    
    def show
        @user = User.find_by(@user)
    end
    

    private
      def user_params
        params.require(:user).permit(:username, :password_digest, :email)
      end

end
