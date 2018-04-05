# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord
    validates :description , presence: true
    belongs_to :user
    belongs_to :forum
end
