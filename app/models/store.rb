class Store < ApplicationRecord
    has_many :transactions
    belongs_to :city
    has_many :components
    has_many :bicycles
end
