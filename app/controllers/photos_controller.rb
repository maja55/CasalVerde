class PhotosController < ApplicationController

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  private

  def photo_params
    params.require(:photo).permit(:image_url)
  end
end
