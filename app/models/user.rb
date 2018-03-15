class User < ApplicationRecord
    validates :name : true
    has_many :transactions
    belongs_to :city
    has_many :forums
    belongs_to :image
    has_many :comments
end
