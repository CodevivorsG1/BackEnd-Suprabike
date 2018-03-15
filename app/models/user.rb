class User < ApplicationRecord
    validates :name : true
    #relations
    has_many :transactions
    belongs_to :city
    has_many :comments
    has_many :forums
    belongs_to :image

end
