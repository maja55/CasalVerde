require 'rails_helper'

RSpec.describe ContentsController, type: :controller do
  it { should route(:get, '/contents').to(action: :index) }
  it { should route(:get, '/contents/1/edit').to(action: :edit, id:1) }
  it { should route(:patch, '/contents/1').to(action: :update, id:1) }

end
