class User < ApplicationRecord
<<<<<<< Updated upstream
=======
    validates :name, presence: true,length: { maximum: 20 }
    validates :surname, presence: true,length: { maximum: 20 }
    validates :gender, presence: true,length: { maximum: 20 }
    validates :email, presence: true,length: { maximum: 20 }
    validates :password, presence: true,length: { maximum: 50 }
    validates :iduser, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
>>>>>>> Stashed changes
end
