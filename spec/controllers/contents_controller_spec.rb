require 'rails_helper'

RSpec.describe ContentsController, type: :controller do
  it { should route(:get, '/contents/new').to(action: :new) }
  it { should route(:post, '/contents').to(action: :create) }
  it { should route(:delete, '/contents/1').to(action: :destroy, id: 1) }
  it { should route(:patch, '/contents/1').to(action: :update, id:1) }

end
