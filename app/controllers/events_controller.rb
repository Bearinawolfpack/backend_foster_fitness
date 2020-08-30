class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
        render json: @event
    end
    
    def index
        @events = Event.all
        render json: @events
    end
end
