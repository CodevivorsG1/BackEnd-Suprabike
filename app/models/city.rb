class City < ApplicationRecord
    validates :id_city , presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :name_city ,presence: true
end