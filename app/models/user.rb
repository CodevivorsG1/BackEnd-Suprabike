# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  city_id                :integer
#  idUser                 :integer
#  nameUser               :string
#  surnameUser            :string
#  genderUser             :string
#  phonenumUser           :integer
#  celphoneUser           :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  authentication_token   :string(30)
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :nameUser, presence: true,length: { maximum: 20 }
    validates :surnameUser, presence: true,length: { maximum: 20 }
    validates :genderUser, presence: true,length: { maximum: 20 }
    validates :idUser, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    has_many :transactions
    belongs_to :city
    has_many :comments, dependent: :destroy
    has_many :forums
    has_one :image, as: :imageable

end
