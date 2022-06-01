class Carehome < ApplicationRecord
  # searchkick
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :chatrooms

  paginates_per 10
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :address, :name, :min_price, :max_price, :description,  presence: true
end
