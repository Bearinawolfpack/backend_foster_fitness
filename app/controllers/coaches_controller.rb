class CoachesController < ApplicationController
    
    def show
        @coach = Coach.find(params[:id])
        render json: @coach
    end
    
    def index
        @coaches = Coach.all
        render json: @coaches
    end
    
    def create
        @coach = Coach.create(coach_params)
    end

    def update
        @coach = Coach.find(params[:id])
        @coach.update(coach_params)
        render json: @coach
    end

    def destroy
        @coach = Coach.find(params[:id])
        @coach.destroy
    end

    private

    def coach_params
        params.require(:coach).permit(:name, :bio, :picture, :admin_id)
    end
end
