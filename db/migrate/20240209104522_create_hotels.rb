class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.integer :total_rooms, default: 0
      t.integer :booked_rooms, default: 0

      t.timestamps
    end
  end
end
