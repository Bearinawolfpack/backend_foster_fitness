class AdminsController < ApplicationController
    def show
        @admin = Admin.find(params[:id])
        render json: @admin
    end
    
    def index
        @admins = Admin.all
        render json: @admins
    end
end
