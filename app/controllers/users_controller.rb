class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy, :edit] 
    def index
        @users = User.all
    end

    def create
        @user = User.create(user_params)
        redirect_to user_path(@user)
    end
    
    def show
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy
        @user.destroy

        redirect_to users_path
    end

    def edit
    end
    
    def new
        @user = User.new
    end

    private
    def user_params
        params.require(:user).permit(:body, :user_id)
    end
    def find_user
        @user = User.find(params[:id])
    end
end
