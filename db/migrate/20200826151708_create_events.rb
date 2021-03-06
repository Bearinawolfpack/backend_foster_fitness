class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :url
      t.integer :admin_id

      t.timestamps
    end
  end
end
