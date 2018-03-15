class Technician < ApplicationRecord
    validates :name, presence: true,length: { maximum: 20 }
    validates :surname, presence: true,length: { maximum: 20 }
    validates :typeWork, presence: true,length: { maximum: 20 }
    validates :email, presence: true,length: { maximum: 20 }
    validates :costHour, presence: true, numericality: true
    validates :phoneNum, presence: true,length: { maximum: 20 }

    has_many :transactions
end
