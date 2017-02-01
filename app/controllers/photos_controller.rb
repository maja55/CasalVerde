class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  def new
  end

  def create
    @photo = Photo.new(photo_params)
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end

end
