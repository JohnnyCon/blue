class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorize_admin!, except: [:index, :show]
  before_action :set_event, only: [:edit, :update, :destroy, :show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:success] = "Saved event successfully"
      redirect_to :events
    else
      flash[:alert] = "Failed to save event"
      render :new
    end
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to :events
    else
      render :edit
    end
  end

  def destroy
    @event.destroy

    redirect_to :events
  end

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event)
          .permit(:title, :description, :capacity, :start_at, :end_at)
  end

end
