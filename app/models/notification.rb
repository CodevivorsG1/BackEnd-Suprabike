class Notification < ApplicationRecord
    belongs_to :technician, optional: true
    belongs_to :user, optional: true
    belongs_to :store, optional: true
end
