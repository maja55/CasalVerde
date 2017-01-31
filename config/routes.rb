Rails.application.routes.draw do

resources :photos, only: [:new, :edit, :update, :destroy]
end
