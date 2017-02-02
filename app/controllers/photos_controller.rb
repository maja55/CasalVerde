class PhotosController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @photos = Photo.all
    # render status: 200, json: photos
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    if @photo.save(photo_params) && params[:controller] == "photos"
    redirect_to information_path
    else
    redirect_to root_path
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    session[:return_to] = request.referer
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params) &&
      params[:controller] == "photos"
      redirect_to information_path
    else
      redirect_to root_path
    end
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end

  def authenticate_admin!
    # check if current user is admin
    unless current_user.admin
      # if current_user is not admin redirect to some route
      redirect_to new_user_session_path
    end
    # if current_user is admin he will proceed to edit action
  end

end
