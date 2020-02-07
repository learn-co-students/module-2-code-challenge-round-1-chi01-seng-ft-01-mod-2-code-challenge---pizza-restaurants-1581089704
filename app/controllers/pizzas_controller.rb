class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    # @restaurant = Restaurant.find(params[:id])
    # @restaurant_pizza = RestaurantPizza.new(restaurant_id: @restaurant.id, pizza_id: @pizza.id)
    #TRYING TO CONNECT THEM
    if @pizza.valid?
      @pizza.save
      # @restaurant_pizza.save
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end




  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end


end
