class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendedevents, class_name: "AttendedEvent", foreign_key: "attended_event_id", dependent: :destroy
end
