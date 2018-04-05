# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  name           :string
#  imageable_type :string
#  imageable_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class ImageSerializer < ApplicationSerializer
  attributes :id, :this_image
end
