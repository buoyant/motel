class Hotel < ApplicationRecord

  has_many :bookings

  def available_rooms
    total_rooms - booked_rooms
  end
end
