class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name:'Follow'
    has_many :followees, through:  :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :posts
    has_many :comments, through: :posts

    has_secure_password

    # calculates the account age of the user
    def account_age
        # gives the date account was created
            # created = @user.created_at.strftime("%m/%d/%y").split("/").map(&:to_i)
            # today = Date.today.strftime("%m/%d/%y").split("/").map(&:to_i)
            # created_array= []
            # month = today[0] - created[0]
            # day = today[1] - created[1]
            # year = today[2] - created[2]
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        remaining_days = days%365
        "This account is #{year} years and #{remaining_days} days old."
    end

    # displays the users most used hashtags on users/show
    def most_used_hashtags
        
    end

    def posts_in_order
        posts.sort_by(&:created_at).reverse
    end
end
