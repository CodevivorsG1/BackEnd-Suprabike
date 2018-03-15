class Image < ApplicationRecord
    belongs_to :transaction
    belongs_to :user
    belongs_to :component
    belongs_to :store
    belongs_to :bicycle
end
