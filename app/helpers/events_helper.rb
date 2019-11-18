# frozen_string_literal: true

module EventsHelper
  def upcoming_events
    Event.where("date > ?", Time.now)
  end

  def prev_events
    Event.where("date < ?", Time.now)
  end
end
