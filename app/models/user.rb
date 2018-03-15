class User < ApplicationRecord
    validates :nameUser, presence: true,length: { maximum: 20 }
    validates :surnameUser, presence: true,length: { maximum: 20 }
    validates :genderUser, presence: true,length: { maximum: 20 }
    validates :emailUser, presence: true,length: { maximum: 20 }
    validates :passwordUser, presence: true,length: { maximum: 50 }
    validates :idUser, presence: true, numericality: { only_integer: true },length: { maximum: 50 }


end
