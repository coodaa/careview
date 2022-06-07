class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :carehomes
  has_many :reviews
  has_many :favorites, dependent: :destroy
  has_many :chatrooms
  has_many :messages
  has_one_attached :photo
  acts_as_favoritor

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :encrypted_password, :first_name, :last_name, presence: true
end
