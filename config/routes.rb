Rails.application.routes.draw do
  resources :restaurant_pizzas , :pizzas ,:restaurants
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end

# Prefix Verb       URI      Pattern                           Controller#Action
# restaurant_pizzas GET    /restaurant_pizzas(.:format)          restaurant_pizzas#index
#                  POST   /restaurant_pizzas(.:format)          restaurant_pizzas#create
# new_restaurant_pizza GET    /restaurant_pizzas/new(.:format)      restaurant_pizzas#new
# edit_restaurant_pizza GET    /restaurant_pizzas/:id/edit(.:format) restaurant_pizzas#edit
# restaurant_pizza     GET    /restaurant_pizzas/:id(.:format)      restaurant_pizzas#show
                    # PATCH  /restaurant_pizzas/:id(.:format)      restaurant_pizzas#update
                    # PUT    /restaurant_pizzas/:id(.:format)      restaurant_pizzas#update
                    # DELETE /restaurant_pizzas/:id(.:format)      restaurant_pizzas#destroy
# pizzas              GET    /pizzas(.:format)                     pizzas#index
#                     POST   /pizzas(.:format)                     pizzas#create
# new_pizza           GET    /pizzas/new(.:format)                 pizzas#new
# edit_pizza          GET    /pizzas/:id/edit(.:format)            pizzas#edit
# pizza                GET    /pizzas/:id(.:format)                 pizzas#show
                    # PATCH  /pizzas/:id(.:format)                 pizzas#update
                    # PUT    /pizzas/:id(.:format)                 pizzas#update
                    # DELETE /pizzas/:id(.:format)                 pizzas#destroy
# restaurants         GET    /restaurants(.:format)                restaurants#index
#                     POST   /restaurants(.:format)                restaurants#create
# new_restaurant      GET    /restaurants/new(.:format)            restaurants#new
# edit_restaurant     GET    /restaurants/:id/edit(.:format)       restaurants#edit
# restaurant          GET    /restaurants/:id(.:format)            restaurants#show
                    # PATCH  /restaurants/:id(.:format)            restaurants#update
                    # PUT    /restaurants/:id(.:format)            restaurants#update
                    # DELETE /restaurants/:id(.:format)            restaurants#destroy
