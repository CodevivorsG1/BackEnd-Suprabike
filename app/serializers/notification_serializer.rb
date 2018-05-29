class NotificationSerializer < ApplicationSerializer
  attributes :id, :description, :has_been_read, :store_id,:user_id, :technician_id

  def serializable_hash(adapter_options = nil, options = {}, adapter_instance = self.class.serialization_adapter_instance)
    hash = super
    hash.each { |key, value| hash.delete(key) if value.nil? }
    hash
  end
end
