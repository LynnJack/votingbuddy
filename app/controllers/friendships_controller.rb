class FriendshipsController < ApplicationController

    def create
        @friendship = curr_user.friendships.build(:friend_id => params[:friend_id])
        if @friendship.save
            redirect_to root_url
    end

    # def create
    #     @friendship = Friendship.create(friender: curr_user, friendee: User.find(params[:friendship][:friendee_id].to_i))

end
