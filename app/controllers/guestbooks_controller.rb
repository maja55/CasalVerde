class GuestbooksController < ApplicationController

layout "creative"

  def index
    @guestbook = Guestbook.new
    @guestbooks = Guestbook.all.published
  end

  def create
    @guestbooks = Guestbook.all.published
    @guestbook = Guestbook.new(guestbook_params)
    if @guestbook.valid?
      redirect_to guestbooks_path
    else
      render :index
    end
  end

  private
  def guestbook_params
    params.require(:guestbook).permit(:name, :email, :message)
  end
end
