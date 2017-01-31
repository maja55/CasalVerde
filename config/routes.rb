Rails.application.routes.draw do

resources :photos, only: [:new, :create, :edit, :update, :destroy]
end
