class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer :admin_id

      t.timestamps
    end
  end
end
