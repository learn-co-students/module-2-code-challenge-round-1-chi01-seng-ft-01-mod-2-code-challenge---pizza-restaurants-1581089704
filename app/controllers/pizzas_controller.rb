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
    if @pizza.valid?
      RestaurantPizza.create()
      @pizza.save
      redirect_to pizza_path
    else
      render :new
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end
  
end
