# == Schema Information
#
# Table name: assemble_parts
#
#  id                     :integer          not null, primary key
#  component_id           :integer
#  bicycle_to_assemble_id :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class AssemblePartSerializer < ApplicationSerializer
  attributes :id
end
