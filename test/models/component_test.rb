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

require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
