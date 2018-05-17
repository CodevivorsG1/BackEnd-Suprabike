# == Schema Information
#
# Table name: bicycles
#
#  id               :integer          not null, primary key
#  id_bicy          :integer
#  brand_bicy       :string
#  material_bicy    :string
#  components_bicy  :string
#  price_bicy       :float
#  usetype_bicy     :string
#  description_bicy :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  store_id         :integer
#

class Bicycle < ApplicationRecord
    validates :id_bicy,:brand_bicy, :material_bicy,:components_bicy,:price_bicy, presence: true
    validates :description_bicy, presence: true
    validates :id_bicy, numericality: { only_integer: true }
    validates :price_bicy, numericality: true

    validates :id_bicy,  length: { maximum: 50 }
    validates :brand_bicy,:material_bicy ,:components_bicy ,length: { maximum: 20 }
    validates :description_bicy, length: { maximum: 100 }

    belongs_to :store
    
    has_many :images, dependent: :delete_all


    scope :material, -> { where(:material_bicy => "aluminio")}

    
    #filtros
    scope :aluminio, -> { where(:material_bicy => "aluminio")}
    scope :acero, -> { where(:material_bicy => "acero")}
    scope :fibraCarbono, -> { where(:material_bicy => "fibraCarbono")}
    scope :gw, -> { where(:brand_bicy => "GW")}
    scope :special, -> { where(:brand_bicy => "specialized")}
    scope :rale, -> { where(:brand_bicy => "Raleigh")}
    scope :trek, -> { where(:brand_bicy => "Trek")}
    scope :hasta, lambda { |price_bicy| where("price_bicy <= ?", price_bicy) }
    scope :desde, lambda { |price_bicy| where("price_bicy >= ?", price_bicy) }


    #tiendas que han vendido bien
    scope :buenventa, -> { Bicycle.joins(:stores).where(stores: {score_store: 5}) }

    #filtros por url
    #scope :filtrourl, lambda { |price_bicy, brand_bicy, material_bicy, usetype_bicy| 
        #where("price_bicy >= ? and brand_bicy = ", price_bicy) }
end
