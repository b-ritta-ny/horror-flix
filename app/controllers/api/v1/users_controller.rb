class Api::V1::UsersController < ApplicationController
    before_action :find_user, only: [:update, :show, :destroy]

#GET /users
    def index
        @users = User.all
        render json: @users
    end



#POST /users
    def create
        binding.pry
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user)
        else
            resp = {
                error: @user.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entity
        end
    end

private 
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation)
    end    