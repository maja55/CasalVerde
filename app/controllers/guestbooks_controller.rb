class GuestbooksController < ApplicationController

layout "creative"

  def index
    @guestbooks = Guestbook.all
  end

  def new
    @guestbook = Guestbook.new(guestbook_params)
  end

  def create
    @guestbook = Guestbook.new(guestbook_params)
    if @guestbook.save
      redirect_to @guestbooks
    else
      render 'guestbooks/index'
    end
  end

  def guestbook_params
    params.require(:guestbook).permit(:name, :email, :message)
  end
end
