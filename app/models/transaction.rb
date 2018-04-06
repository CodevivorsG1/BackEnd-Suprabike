# == Schema Information
#
# Table name: transactions
#
#  id                :integer          not null, primary key
#  date_transaction  :string
#  type_transaction  :string
#  total_transaction :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Transaction < ApplicationRecord
    validates :date_transaction, presence: true
    validates :type_transaction, presence: true,length: { maximum: 50 }
    validates :total_transaction, presence: true, numericality: { only_float: true }
    belongs_to :technician , optional: true
    belongs_to :store , optional: true
    belongs_to :user, optional: true

    #scope :soporte, where(:type_transaction => "soporte")
   
end
