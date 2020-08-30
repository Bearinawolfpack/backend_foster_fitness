class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.text :bio
      t.string :picture
      t.integer :admin_id

      t.timestamps
    end
  end
end
