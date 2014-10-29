class Friendship < ActiveRecord::Base
    belongs_to :user
    belongs_to :friend, class_name: "User"


    def friendship
      self.friend_id
    end


end
