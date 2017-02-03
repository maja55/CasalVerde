require 'rails_helper'

RSpec.describe Admin::BookingsController, type: :controller do
   it { should use_before_action(:set_booking)}
end
