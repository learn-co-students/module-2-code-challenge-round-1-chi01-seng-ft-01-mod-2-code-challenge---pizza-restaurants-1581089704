Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :pizzas, except: [:edit, :update, :destroy]
  resources :restaurants, except: [:edit, :update, :destroy]
  resources :pizza_restaurants, except: [:edit, :update, :destroy]
end
