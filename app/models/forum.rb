class Forum < ApplicationRecord
    #relations
    belongs_to :user
    has_many :comments
   
end
