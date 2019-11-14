class EventsController < ApplicationController

  def create
    @event = current_user.events.build(event_params)
  end

  def show
  end

  def destroy
  end

  def index
    @events = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:description)
    end
end
