Rails.application.routes.draw do
  root 'pizzas#index'
  resources :restaurants, only: [:index, :show]
  resources :pizzas, only: [:index, :show, :new, :create]
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
