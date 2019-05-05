class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :date
      t.string :place
      t.text :event_image_id
      t.integer :capacity
      t.text :description

      t.timestamps
    end
  end
end
