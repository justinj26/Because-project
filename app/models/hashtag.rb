class Hashtag < ApplicationRecord

    has_many :hash_posts
    has_many :posts, through: :hash_posts 

    # finds top tending hashtags 
    def trending
        @hashtags = Hashtag.all 
        sorted = @hashtags.sort_by(&:posts.count).reverse
        sorted[0...4]
    end
end
