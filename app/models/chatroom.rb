class Chatroom < ApplicationRecord
  belongs_to :carehome
  belongs_to :user
end
