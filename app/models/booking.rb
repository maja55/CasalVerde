class Booking < ApplicationRecord
  # validates :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, presence: true
  #
  #
  # validates :first_name, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :last_name, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :street, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :house_number, numericality: {
  #   only_integer: true,
  #   greater_than: 0,
  #   message: "only allows numbers"
  # }
  # validates :city, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :phone_number, numericality: {
  #   only_integer: true,
  #   message: "only allows numbers"
  # }



 # Booking valid methods

 # should return false if the start date is not at least 4 days from now
 # works
  def timely_start_date?
    if self.start_date - Date.today > 4
      return true
    else
      return false
    end
  end

  def booking_per_night
    # should return an array of hashes with
    # day by day bookings
  end



  # def what_season(self.start_date)
  #   start_date = self.start_date
  #   @seasons = Season.all
  #   @seasons.each do |season|
  #     if self.start_date > season.start_date && self.start_date < season.end_date
  #       current_season << season.id
  #     end
  #   end
  # end

# should return the season associated with the start_date of the booking
  def season
    current_season_id = ""
    start_date = self.start_date
    @seasons = Season.all
    @seasons.each do |season|
      if (season.start_date <= start_date) && (season.end_date > start_date)
        then current_season_id = season.id
      end
    end
    current_season_id
  end

  def minimum_stay?
    #should return true if the minimum stay is correct
    season = self.season
    minimum_stay = Season.find(season).min_stay
    return false unless self.number_of_nights >= minimum_stay
  end



   def set_total_price
     self.price = room.price
     total_days = (ends_at.to_date - starts_at.to_date).to_i
     self.total = price * total_days
   end

end
