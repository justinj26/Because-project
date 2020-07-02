class Reply < ApplicationRecord
    belongs_to :comment
    belongs_to :post
    belongs_to :user

    validates :content, presence: true
    validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}

    def reply_age
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


    
end
