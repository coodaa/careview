class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, :rating,  presence: true
  validates :rating, numericality: { in: 1..5 }
end
