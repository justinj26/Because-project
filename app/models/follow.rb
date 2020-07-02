class Follow < ApplicationRecord
    # relationships
    belongs_to :follower, class_name: 'User'
    belongs_to :followee, class_name: 'User'

    # validations
    validates :follower_id, presence: true
    validates :followee_id, presence: true
    # validates :already_follow

    # # check if relationship exists
    # def already_following?(follower_id, followee_id)
    #     Follow.all.each do |follow|
    #     if follow.follower_id == follower_id && follow.followee_id == folowee_id 
    #         # can't create new relationship/follow instance
    #     else
    #         # otherwise create the follow instance
    #     end
    #   end

    def already_follow(follower_id, followee_id)
        if follow.follower_id == follower_id && follow.followee_id == folowee_id 
            errors.add(:followee_id, "you're already following this user")
        end
    end


end
