class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:new, :create, :show, :destroy]

#GET /users
    def index
        @users = User.all
        render json: @users
    end
end

private 
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password_digest)
    end    