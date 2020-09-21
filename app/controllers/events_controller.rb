class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
        render json: @event
    end
    
    def index
        @events = Event.all
        render json: @events
    end

    def create
        @event = Event.create(event_params)
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        render json: @event
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:name, :description, :picture, :url, :admin_id)
    end
end

