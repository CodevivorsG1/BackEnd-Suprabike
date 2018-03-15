class City < ApplicationRecord
<<<<<<< Updated upstream
=======
    validates :id_city , presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :name_city ,presence: true
>>>>>>> Stashed changes
end
