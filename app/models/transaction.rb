class Transaction < ApplicationRecord
    validates :date_transaction, presence: true
    validates :type_transaction, presence: true,length: { maximum: 50 }
    validates :total_transaction, presence: true, numericality: { only_float: true }
    #relations
    belongs_to :technician
end