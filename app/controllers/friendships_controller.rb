class FriendshipsController < ApplicationController

    def create
        @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
        if @friendship.save
            redirect_to root_url
    end

    def destroy
      @friendship = Friendships.find(params[:id])
      @friendship.destroy
      redirect_to root_url
    end

    # def create
    #     @friendship = Friendship.create(friender: curr_user, friendee: User.find(params[:friendship][:friendee_id].to_i))

# @friendship = curr_user.friendships.build(:friend_id => params[:friend_id])

end



# def destroy
#       @friendship = curr_user.friendships.find(params[:id])
#       @friendship.destroy
#       redirect_to curr_user
#     end
