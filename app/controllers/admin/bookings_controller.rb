class Admin::BookingsController < Admin::BaseController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end
end
