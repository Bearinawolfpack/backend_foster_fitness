class WorkoutsController < ApplicationController
    def show
        @workout = Workout.find(params[:id])
        render json: @workout
    end
    
    def index
        @workouts = Workout.all
        render json: @workouts
    end
end
