class CreativesController < ApplicationController
# included the next line in every controller for the styling
layout "creative"

  def index
    @photos = Photo.all
    @booking = Booking.new
  end

  def show
  end

end
