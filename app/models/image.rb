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

class Image < ApplicationRecord
    belongs_to :imageable , polymorphic: true
    belongs_to :technician
    belongs_to :user
    belongs_to :store
    belongs_to :component
    belongs_to :bycicle
  
end
