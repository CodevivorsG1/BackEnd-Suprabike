class User < ApplicationRecord
    validates :name : true
    has_many :transactions
end
