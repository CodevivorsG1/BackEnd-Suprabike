class Transaction < ApplicationRecord
    validates :date, presence: true
    validates :type, presence: true,length: { maximum: 50 }
    validates :total, presence: true, numericality: { only_float: true }

    belongs_to :technician
    belongs_to :user
    belongs_to :store
end
