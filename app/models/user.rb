class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id"
  has_many :attended_events, through: :attended_events,
                             foreign_key: "attendee_id"
end
