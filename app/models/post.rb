class Post < ApplicationRecord
    # need to add belongs_to :user
    has_many :comments
    has_many :hash_posts
    has_many :hashtags, through: :hash_posts 

    has_one_attached :image 
end
