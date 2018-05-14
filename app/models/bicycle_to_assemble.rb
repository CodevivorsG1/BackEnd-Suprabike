# == Schema Information
#
# Table name: bicycle_to_assembles
#
#  id          :integer          not null, primary key
#  total_price :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BicycleToAssemble < ApplicationRecord
    belongs_to :user
    has_many :assemble_parts
    has_many :components , through: :assemble_parts
end
