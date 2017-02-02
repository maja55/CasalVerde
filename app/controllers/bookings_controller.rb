class BookingsController < ApplicationController
  layout "creative"

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to 'booking-details/show'
      ConfirmationMailer.new_confirmation(@booking).deliver_now
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation)
  end
end
