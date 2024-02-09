class Booking < ApplicationRecord
  belongs_to :hotel
  belongs_to :user

  after_save :update_hotel_rooms

  def update_hotel_rooms
    if canceled
      hotel.update!(booked_rooms: (hotel.booked_rooms - rooms))
    else
      hotel.update!(booked_rooms: (hotel.booked_rooms + rooms))
    end
  end

  def cancel
    update!(canceled: true)
  end
  
end
