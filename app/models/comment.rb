require_relative 'user'
class Comment < ApplicationRecord
    # relationships
    belongs_to :post
    belongs_to :user 
    has_many :replies 

<<<<<<< HEAD
    # validations
    validates :message, presence: true 
    validates :message, length: { minimum: 250 }, unless: -> { message.include?('?')}, message: "A post must contain at least 250 characters, or include a question mark."
    validates :message, inclusion: { in: %w(because reason why), unless: -> { message.include?('?')}, message: "A post must contain either the word 'because', 'reason', or 'why'."
=======
    # validates :message, presence: true
    # validates :message, length: { minimum: 250 }, unless: -> { message.include?('?')}
    validates :message, presence: true, if: :because?, unless: -> { message.include?('?')} 

    validates :message, length: { minimum: 250 , unless: -> { message.include?('?')}, message: "A post must contain at least 250 characters, or include a question mark."}
    


    def because?
        self.message.include?('because') || self.message.include?('reason') || self.message.include?('why') || self.message.include?("Because") || self.message.include?("Reason") || self.message.include?('Why')
    end
>>>>>>> master

# fix
    def comment_age
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

    # def home_user?
    #     self.user == current_user
    # end


end
