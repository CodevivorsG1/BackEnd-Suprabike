class Forum < ApplicationRecord
    validates :topic , presence: true,length: { maximum: 50 }

    belongs_to :user
    has_many :comments
end
