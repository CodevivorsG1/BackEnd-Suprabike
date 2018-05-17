# == Schema Information
#
# Table name: bicycle_to_assembles
#
#  id          :integer          not null, primary key
#  total_price :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BicycleToAssembleSerializer < ApplicationSerializer
  attributes :id, :total_price
  has_many :components , through: :assemble_parts
end
