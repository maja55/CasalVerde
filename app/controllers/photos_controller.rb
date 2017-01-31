class PhotosController < ApplicationController

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image_url)
  end

end
