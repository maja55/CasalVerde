require 'rails_helper'

RSpec.describe Admin::GuestbooksController, type: :controller do
  it { should route(:get, '/admin/guestbooks').to(action: :index) }
  it { should route(:get, '/admin/guestbooks/new').to(action: :new) }
  it { should route(:patch, '/admin/guestbooks/1').to(action: :update, id: 1) }
  it { should route(:get, '/admin/guestbooks/1/edit').to(action: :edit, id: 1) }
  it { should route(:delete, '/admin/guestbooks/1').to(action: :destroy, id:1) }
end
