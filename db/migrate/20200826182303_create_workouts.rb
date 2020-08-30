class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.date :date
      t.string :workout
      t.text :description
      t.integer :admin_id

      t.timestamps
    end
  end
end
