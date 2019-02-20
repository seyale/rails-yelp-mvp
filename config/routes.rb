Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :restaurants
  end

  # Routing Restaurants User
  resources :restaurants, only: [:index, :new, :create, :show]

  # Routing Reviews User
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

  root to: 'restaurants#index'
end
