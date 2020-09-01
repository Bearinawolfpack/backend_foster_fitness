class RenameWorkoutsWorkoutToWod < ActiveRecord::Migration[6.0]
  def change
    rename_column :workouts, :workout, :wod
  end
end
