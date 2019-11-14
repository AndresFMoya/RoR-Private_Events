class User < ApplicationRecord
  include EventsHelper
  has_many :events, foreign_key: "creator_id", dependent: :destroy
  has_many :attendedevents, class_name: "AttendedEvent", foreign_key: "attendee_id", dependent: :destroy
end
