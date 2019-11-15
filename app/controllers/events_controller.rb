class EventsController < ApplicationController
  def new
    @event = Event.new
    @user = current_user
  end

  def create
    @event = current_user.events.build(event_params)
    @user = current_user
    if @event.save
      redirect_to @user
    else
      render "events/new"
    end
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.creator
    @attendees = @event.attendees
  end

  def destroy
  end

  def index
    @events = Event.all
    @upcoming_events = self.upcoming_events
    @prev_events = self.prev_events
  end

  def upcoming_events
    Event.where("date > ?", Time.now)
  end

  def prev_events
    Event.where("date < ?", Time.now)
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
