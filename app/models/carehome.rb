class Carehome < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many_attached :photos
  acts_as_favoritable

  paginates_per 9
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :address, :name, :min_price, :max_price, :description, presence: true
end
