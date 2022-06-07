class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, :rating, presence: true
end
