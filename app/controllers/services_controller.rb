class ServicesController < ApplicationController
    def show
        @service = Service.find(params[:id])
        render json: @service
    end
    
    def index
        @services = Service.all
        render json: @services
    end

    def update
        @service = Service.find(params[:id])
        @service.update(service_params)
        render json: @service
    end

    private

    def service_params
        params.require(:service).permit(:name, :description, :price, :admin_id)
    end


end