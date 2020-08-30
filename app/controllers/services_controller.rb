class ServicesController < ApplicationController
    def show
        @service = Service.find(params[:id])
        render json: @service
    end
    
    def index
        @services = Service.all
        render json: @services
    end
end
