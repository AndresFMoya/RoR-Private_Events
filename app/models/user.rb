class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", dependent: :destroy
  has_many :attended_events, foreign_key: "attendee_id", dependent: :destroy
end
