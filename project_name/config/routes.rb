Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users
  resources :users, only: [:destroy, :show, :index, :create, :update]
  resources :artworks, only: [:destroy, :show, :create, :update]
  resources :artwork_shares, only: [:show, :destroy, :create]

  resources :users do
    resources :artworks, only: [:index]
  end
end
