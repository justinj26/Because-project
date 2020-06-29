class HashPost < ApplicationRecord
    belongs_to :hastag
    belongs_to :post 
end
