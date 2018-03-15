class Forum < ApplicationRecord
    validates :topic , presence: true,length: { maximum: 50 }
end
