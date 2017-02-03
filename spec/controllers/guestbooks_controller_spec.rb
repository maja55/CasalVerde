require 'rails_helper'

RSpec.describe GuestbooksController, type: :controller do
  it { should route(:get, '/guestbooks').to(action: :index) }
  it { should route(:get, '/guestbooks/new').to(action: :new) }
  it { should route(:post, '/guestbooks').to(action: :create) }
  it { should route(:get, '/guestbooks/1').to(action: :show, id: 1) }

end
