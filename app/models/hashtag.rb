class Hashtag < ApplicationRecord
    # relationships
    has_many :hash_posts
    has_many :posts, through: :hash_posts 

    # validations
    validates :name, presence: :true


    # finds top tending hashtags 
    def self.trending
        @hashtags = Hashtag.all 
        sorted = @hashtags.sort_by{|hashtag| hashtag.posts.count}.reverse
        sorted[0...4]
    end

    # wheneve
    def self.pound_sign
        
    end

end
