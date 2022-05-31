class Carehome < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :chatrooms

  validates :address, :name, :price_range, :description,  presence: true
end
