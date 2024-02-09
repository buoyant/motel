class HomeController < ApplicationController
  before_action :set_booking, only: %i[ modify_booking update_booking cancel_booking ]

  def index
    @available_hotels = Hotel.where("total_rooms - booked_rooms > 0")
  end

  def book_hotel
    @hotel = Hotel.find(params[:id])
  end

  def bookings
    @bookings = current_user.bookings
  end

  def create_booking
    hotel = Hotel.find(params[:hotel_id])
    hotel.bookings.create(booking_params.merge(user: current_user))
    
    flash[:notice] = 'You have successfully made a booking.'
    redirect_to bookings_path
  end

  def modify_booking
  end

  def update_booking
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def cancel_booking
    @booking.cancel

    flash[:notice] = 'You have successfully canceled a booking.'
    redirect_to bookings_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:checkin_date, :checkout_date, :rooms, :members)
    end
end
