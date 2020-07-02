require_relative 'user'
class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user 
    has_many :replies 

    validates :message, presence: true
    # validates :message, length: { minimum: 250 }, unless: -> { message.include?('?')}

# fix
    def comment_age
        days = DateTime.now.mjd - created_at.to_date.mjd 
        year = days/365
        months = days/30
        weeks = days/7
        remaining_days = days%365
        "This account is #{year} years and #{remaining_days} days old."
    end

    def user_name
        self.user.name 
    end

    def user_image
        self.user.image 
    end

    # def home_user?
    #     self.user == current_user
    # end


end
