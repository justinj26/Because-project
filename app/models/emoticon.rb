class Emoticon < ApplicationRecord
    # belongs_to :post
    has_many :posts 

    validates :image, presence: true
    validates :name, presence: true
end
