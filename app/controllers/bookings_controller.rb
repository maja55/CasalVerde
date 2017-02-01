class BookingsController < ApplicationController
  layout "creative"
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to 'booking-details/show'
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:salutation, :first_name, :insertion, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation)
  end
end
