class RestaurantPizzaController < ApplicationController
    def index
        @restaurant_pizzas = RestaurantPizza.all
    end
end