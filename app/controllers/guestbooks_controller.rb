class GuestbooksController < ApplicationController

layout "creative"

  def index
    @guestbook = Guestbook.new
    @guestbooks = Guestbook.all.published
  end

  def create
    @guestbook = Guestbook.new(guestbook_params)
    if @guestbook.save
      redirect_to guestbooks_path
    else
      render
    end
  end

  private
  def guestbook_params
    params.require(:guestbook).permit(:name, :email, :message)
  end
end
