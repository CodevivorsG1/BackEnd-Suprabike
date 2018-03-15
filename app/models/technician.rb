class Technician < ApplicationRecord
    validates :id_technical, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    validates :NameTec, presence: true,length: { maximum: 20 }
    validates :SurnameTec, presence: true,length: { maximum: 20 }
    validates :typeworktec, presence: true,length: { maximum: 20 }
    validates :emailtec, presence: true,length: { maximum: 20 }
    validates :costhourtec, presence: true, numericality: true
    validates :phonenumtec, presence: true,length: { maximum: 20 }
    validates :passwordtec, presence: true,length: { maximum: 20 }

    #relations
    has_many :transactions
    belongs_to :image
 

end
