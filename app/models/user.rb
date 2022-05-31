class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :carehomes
  has_many :reviews
  has_many :favorites, dependent: :destroy
  has_many :chatrooms

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
