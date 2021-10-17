class Api::V1::UsersController < ApplicationController
    before_action :find_user

#GET /users
    def index
        @users = Users.all
        render json: @user
    end
end

private 
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password_digest)
    end    