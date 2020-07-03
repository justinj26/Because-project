class Reply < ApplicationRecord
    belongs_to :comment
    belongs_to :post
    belongs_to :user

    validates :content, presence: true 
    validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}, message: "A post must contain at least 250 characters, or include a question mark."
<<<<<<< HEAD
    validates :content, inclusion: { in: %w(because reason why), unless: -> { content.include?('?')}, message: "A post must contain either the word 'because', 'reason', or 'why'."
=======
    validates :content, inclusion: { in: %w(because reason why), unless: -> { content.include?('?')}, message: "A post must contain either the word 'because', 'reason', or 'why'."}
>>>>>>> master

    def reply_age
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


    
end
