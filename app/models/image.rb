class Image < ApplicationRecord
    #relations
    belongs_to :technician
    belongs_to :user
    belongs_to :store
    image belongs_to :component
    belongs_to :bycicle
  
end
