class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    has_many :replies, through: :comments 
    has_many :hash_posts
    has_many :hashtags, through: :hash_posts 

    has_one_attached :image 

    # validates :content, presence: true 
    # validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}
end
