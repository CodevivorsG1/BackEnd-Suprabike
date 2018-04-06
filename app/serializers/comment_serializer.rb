# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CommentSerializer < ApplicationSerializer
  attributes :id , :description
end
