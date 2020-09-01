class WorkoutsController < ApplicationController
    def show
        @workout = Workout.find(params[:id])
        render json: @workout
    end
    
    def index
        @workouts = Workout.all
        render json: @workouts
    end

    def update
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :date, :wod, :description, :admin_id)
    end
    
end

