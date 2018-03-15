class Store < ApplicationRecord
    has_many :transactions
    belongs_to :city
end
