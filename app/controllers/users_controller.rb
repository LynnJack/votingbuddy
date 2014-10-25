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

      def edit
      end

      def update
            @user = User.find(params[:id])
            if @user.update_attributes(params.require(:user).permit(:address))
                @user.save
                redirect_to users_path
            else
                render 'edit'
            end
      end

          # if  response['pollingLocations'] == nil
          # else flash[:notice] = "Polling Location not found for this address."
end




