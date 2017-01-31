require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
            it do
              params = {
                photo: {
                  image: "www.photo.nl"
                }
              }
              should permit(:image).
                for(:create, params: params).on(:image)
                
            end

end
