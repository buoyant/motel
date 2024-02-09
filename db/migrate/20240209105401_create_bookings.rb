class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :checkin_date
      t.date :checkout_date
      t.integer :rooms
      t.integer :members
      t.boolean :canceled, default: false

      t.timestamps
    end
  end
end
