class Post < ApplicationRecord
    belongs_to :user
    belongs_to :emoticon
    has_many :comments
    has_many :replies, through: :comments 
    has_many :hash_posts
    has_many :hashtags, through: :hash_posts 

    has_one_attached :image 

    validates :content, presence: true 
    validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}

    validates :content, length: { minimum: 250 , unless: -> { content.include?('?')}, message: "A post must contain at least 250 characters, or include a question mark."}
    validates :content, inclusion: { in: %w(becasue reason why), unless: -> { content.include?('?')}, message: "A post must contain either the word 'because', 'reason', or 'why'."}


    # fix 
    def post_age
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        months = days/30
        weeks = days/7
        remaining_days = days%365
        if days/365 > 1
            return "#{year.to_i} years old"
        elsif days/30 > 1
            return "#{moths.to_i} months old"
        elsif days/7 > 1
            return "#{weeks.to_i} weeks old"
        else
            return "#{days} days old"
        end
    end

    def user_name
        self.user.name 
    end

    def user_image
        self.user.image 
    end

    def emoticon_image
        self.emoticon.image 
    end

    # def home_user?
    #     self.user == current_user
    # end


end
