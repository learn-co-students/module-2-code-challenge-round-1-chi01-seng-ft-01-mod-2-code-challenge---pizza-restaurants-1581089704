class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find_by(id: params[:id])
    # @pizza = Pizza.find_by(id: params[:id])
    # @pizzas = Pizza.all
  end


end
