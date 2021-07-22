Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  resources :users, only: [:destroy, :show, :index, :create, :update]
  resources :artworks, only: [:destroy, :show, :index, :create, :update]
end
