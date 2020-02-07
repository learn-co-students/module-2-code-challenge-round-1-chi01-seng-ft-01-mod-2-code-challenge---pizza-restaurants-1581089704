Rails.application.routes.draw do

  resources :pizzas, only: [:show, :index, :new, :create]
  resources :restaurants, only: [:show, :index]
end
