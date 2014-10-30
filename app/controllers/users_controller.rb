class UsersController < ApplicationController
    
      def index
          @users = User.all
          @user = current_user  
      end

      def new
          @user = User.new
      end

     def create
        @user = User.new(user_params)
        if @user.save
          redirect_to root_url
        else
          render :action => 'new'
        end
     end

      def show
          @user = User.find(params[:id])
          @users = User.all
      end

      def edit
      end

      def update
            @user = User.find(params[:id])
            if @user.update_attributes(params.require(:user).permit(:address, :name))

                redirect_to user_path(@user)
            else
                render 'edit'
            end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :name)
      end
          # if  response['pollingLocations'] == nil
          # else flash[:notice] = "Polling Location not found for this address."
end




