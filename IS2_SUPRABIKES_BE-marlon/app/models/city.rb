class City < ApplicationRecord
    validates :idcity , presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :name_city ,presence: true
    #relations
    has_many :users
    has_many :stores
end
