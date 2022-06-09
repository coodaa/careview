class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, presence: true

  def average_ratings
    (food + privacy + staff + hygiene + atmosphere) / 5
  end
end
