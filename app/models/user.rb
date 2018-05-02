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

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

    acts_as_token_authenticatable

    validates :nameUser, presence: true,length: { maximum: 20 }
    validates :surnameUser, presence: true,length: { maximum: 20 }
    validates :genderUser, presence: true,length: { maximum: 20 }
    validates :idUser, presence: true, numericality: { only_integer: true },length: { maximum: 50 }
    has_many :transactions , dependent: :destroy
    belongs_to :city 
    has_many :comments, dependent: :destroy
    has_many :forums , dependent: :destroy
    has_one :image #, as: :imageable

    #scope :similarJuan, where(:nameUser => "Juan")
    scope :mujeres,-> { where(:genderUser => "mujer")}
    scope :hombres,-> { where(:genderUser => "hombre")}
#clentes que han hecho transacciones de mantenimiento ordenado por id
    scope :pedidoMantenimiento, -> { User.joins(:transactions).where(transactions: {type_transaction: "mantenimiento"}) }
    
    def self.create_user_for_google(data,email)                  
        where(email: data["email"]).first_or_initialize.tap do |user|
            user.email=email
            user.password=Devise.friendly_token[0,20]
            user.password_confirmation=user.password
            user.idUser = 1              
            user.nameUser = "yourname"            
            user.surnameUser = "your USername"
            user.genderUser = "your gender"
            user.city_id = 1
            user.save!
        end
    end

end
