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
    has_attached_file :this_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :this_image, content_type: /\Aimage\/.*\z/

    belongs_to :imageable , polymorphic: true , optional: true
    belongs_to :technician, optional: true
    belongs_to :user, optional: true
    belongs_to :store, optional: true
    belongs_to :component, optional: true
    belongs_to :bycicle, optional: true
  
end
