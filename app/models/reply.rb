class Reply < ApplicationRecord
    belongs_to :comment
    belongs_to :post
    belongs_to :user

    validates :content, presence: true
    validates :content, length: { minimum: 250 }, unless: -> { content.include?('?')}
end
