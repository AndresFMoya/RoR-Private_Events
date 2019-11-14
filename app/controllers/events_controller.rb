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
    @event  = Event.find(params[:id])
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
