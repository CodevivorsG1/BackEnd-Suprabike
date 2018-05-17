# == Schema Information
#
# Table name: components
#
#  id                    :integer          not null, primary key
#  type_component        :string
#  price_component       :float
#  description_component :string
#  brand_component       :string
#  sizes_component       :float
#  material_component    :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  store_id              :integer
#  part_of_bike          :string
#  strength              :string
#  length                :float
#  height                :string
#  suspension            :string
#  width                 :float
#  amount_of_relief      :string
#  rin                   :integer
#  profile               :string
#  frame_size            :float
#  rear_suspension       :string
#  number_of_changes     :integer
#  num_plates            :integer
#  num_dish_teeth        :integer
#

class ComponentSerializer < ApplicationSerializer
  attributes :id, :type_component, :price_component, :description_component, :brand_component, :sizes_component, :material_component , :store_id, :part_of_bike,  :strength,
  :length,  :height,  :suspension,  :width,  :amount_of_relief,  :rin,  :profile,  :frame_size,  :rear_suspension,  :number_of_changes,  :num_plates,  :num_dish_teeth
  has_many :bicycle_to_assembles , through: :assemble_parts 
  has_many :images
  def serializable_hash(adapter_options = nil, options = {}, adapter_instance = self.class.serialization_adapter_instance)
    hash = super
    hash.each { |key, value| hash.delete(key) if value.nil? }
    hash
  end
end
