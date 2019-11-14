class AttendedEvent < ApplicationRecord
  belongs_to :attendee_id, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
  validates :attendee_id, presence: true
  validates :attended_event, presence: true
end
