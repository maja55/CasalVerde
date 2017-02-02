class Admin::GuestbooksController < Admin::BaseController
  def index
    @guestbooks = Guestbook.all
  end

end
