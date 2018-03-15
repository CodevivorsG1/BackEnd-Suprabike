class Store < ApplicationRecord
    #relations
    has_many :transactions
    belongs_to :city
    has_many :components
    has_many :images
    has_many :bycicles

end
