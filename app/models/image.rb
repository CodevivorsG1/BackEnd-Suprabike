class Image < ApplicationRecord
    belongs_to :transaction
    belongs_to :user
    belongs_to :component
end
