class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, :rating, :privacy, :hygiene, :atmosphere, :staff, :food, presence: true
end
