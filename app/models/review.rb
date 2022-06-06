class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, presence: true
end
