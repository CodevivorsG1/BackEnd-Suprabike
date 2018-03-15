class Component < ApplicationRecord
    #relations
    belongs_to :store
    has_many :images
end
