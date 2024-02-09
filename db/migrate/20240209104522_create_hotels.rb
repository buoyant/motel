class CreateHotels < ActiveRecord::Migration[7.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.integer :total_rooms
      t.integer :booked_rooms

      t.timestamps
    end
  end
end
