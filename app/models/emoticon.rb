class Emoticon < ApplicationRecord
    belongs_to :post

    validates :image, presence: true
    validates :name, presence: true
end
