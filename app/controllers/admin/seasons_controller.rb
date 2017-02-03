class Admin::SeasonsController < Admin::BaseController
  def index
    @seasons = Season.all
  end
end
