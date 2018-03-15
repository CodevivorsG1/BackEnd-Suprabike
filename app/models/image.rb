class Image < ApplicationRecord
    belongs_to :imageable , polymorphic: true
     belongs_to :technician
    belongs_to :user
    belongs_to :store
    image belongs_to :component
    belongs_to :bycicle
  
end
