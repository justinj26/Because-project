class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name:'Follow'
    has_many :followees, through:  :followed_users

    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    has_many :posts
    has_many :comments, through: :posts
    has_many :replies

    has_secure_password

    def account_age
    end

    def most_used_hashtags
    end

    def posts_in_order
        posts.sort_by(&:created_at).reverse
    end

    def all_followees_posts 
        all_followee_posts = []
        self.followees.each do |followee|
            followee.posts.each do |post|
                all_followee_posts << post 
            end
        end
        all_followee_posts  
    end

    def feed 
        all_followee_posts.sort_by(&:created_at).reverse
    end
end
