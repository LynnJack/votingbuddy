class UsersController < ApplicationController

      def index
          @users = User.all
          @user = current_user  
      end

      def new
      end

     def create
        @user = User.new(params.require(:user).permit(:email, :password))
      end

      def show
          @user = User.find(params[:id])
      end

  end