class AttendedEventsController < ApplicationController

  def new
    @attendance = AttendedEvent.new
  end

  def create
    @attendance = AttendedEvent.new(attendance_params)
    @attendance.save
  end

  private   
    def attendance_params
      params.require(:attendance).permit(:attendee_id, :attendedevent_id)
    end
end
