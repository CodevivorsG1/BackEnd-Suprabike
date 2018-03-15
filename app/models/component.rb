class Component < ApplicationRecord
    validates :type_component, presence: true,length: { maximum: 20 }
    validates :price_component, presence: true , numericality: true
    validates :description_component, presence: true,length: { maximum: 50 }
    validates :brand_component, presence: true,length: { maximum: 20 }
    validates :sizes_component, presence: true, numericality: true,length: { maximum: 20 }
    validates :material_component, presence: true,length: { maximum: 20 }
end
