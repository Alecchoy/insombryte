class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :host_id, null: false
      t.integer :category_id, null: false
      t.string :title, null: false 
      t.text :description, null: false
      t.string :location, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.time :start_time, null: false 
      t.time :end_time, null: false

      t.timestamps
    end
    add_index :events, :host_id
    add_index :events, :title 
    add_index :events, :category_id
  end
end
