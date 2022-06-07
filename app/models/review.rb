class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carehome

  validates :content, :rating, presence: true

  def average_ratings
    (food + privacy + staff + hygiene + atmosphere).to_f / 5
  end
end
