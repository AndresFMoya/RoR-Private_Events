class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", dependent: :destroy
  has_many :attendedevents, class_name: "AttendedEvent", foreign_key: "attendee_id", dependent: :destroy

  def upcoming_events
    Event.where("date > ?", Time.now)
  end

  def prev_events
    Event.where("date < ?", Time.now)
  end
end
