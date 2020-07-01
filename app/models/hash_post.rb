class HashPost < ApplicationRecord
    belongs_to :hashtag
    belongs_to :post 
end
