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
#  technician_id     :integer
#

class Transaction < ApplicationRecord
    validates :date_transaction, presence: true
    validates :type_transaction, presence: true,length: { maximum: 50 }
    validates :total_transaction, presence: true, numericality: { only_float: true }
    belongs_to :technician , optional: true
    belongs_to :store , optional: true
    belongs_to :user, optional: true

    scope :ensamble, -> {where(:type_transaction => "ensamblado")}
    #scope :totalTrans, -> {where("total_transaction < ?", total_transaction)}
    
    #filtros
    def self.precios(total_transaction)
        where("total_transaction < ?", total_transaction)
    end
    
    scope :mujer, -> { Transaction.joins(:users).where(users: {genderUser: "mujer"})}

    
    
    
end
