# == Schema Information
#
# Table name: images
#
#  id                      :integer          not null, primary key
#  name                    :string
#  imageable_type          :string
#  imageable_id            :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  this_image_file_name    :string
#  this_image_content_type :string
#  this_image_file_size    :integer
#  this_image_updated_at   :datetime
#

class ImageSerializer < ApplicationSerializer
  attributes :id, :name , :this_image , :bicycle_id , :store_id,:user_id#, :technician_id

  def serializable_hash(adapter_options = nil, options = {}, adapter_instance = self.class.serialization_adapter_instance)
    hash = super
    hash.each { |key, value| hash.delete(key) if value.nil? }
    hash
  end
end
