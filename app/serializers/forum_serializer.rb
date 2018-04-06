# == Schema Information
#
# Table name: forums
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ForumSerializer < ApplicationSerializer
  attributes :id, :topic
end
