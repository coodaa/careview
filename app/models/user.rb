class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :carehomes
  has_many :reviews
  has_many :favorites, dependent: :destroy
  has_many :chatrooms
  has_many :messages
  acts_as_favoritor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, :encrypted_password, :first_name, :last_name, :phone_number, presence: true
end
