class User < ApplicationRecord
    validates :name : true
    has_many :transactions
    belongs_to :city
end
