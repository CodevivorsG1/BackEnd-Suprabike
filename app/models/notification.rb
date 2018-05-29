class Notification < ApplicationRecord
    belongs_to :technician, optional: true
    belongs_to :user, optional: true
    belongs_to :store, optional: true

    scope :noti_by_user, lambda { |user_id ,a| where("user_id = ? and has_been_read IS ? ", user_id, a) }
    scope :count_noti_by_user, lambda { |user_id| where("user_id = ? and not has_been_read ", user_id) }

end
