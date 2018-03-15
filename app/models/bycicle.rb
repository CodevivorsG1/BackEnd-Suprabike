class Bycicle < ApplicationRecord
    belongs_to :store
    has_many :images
end
