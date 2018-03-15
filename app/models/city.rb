class City < ApplicationRecord
    validates :idcity , presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :name_city ,presence: true
    #relations
   
end
