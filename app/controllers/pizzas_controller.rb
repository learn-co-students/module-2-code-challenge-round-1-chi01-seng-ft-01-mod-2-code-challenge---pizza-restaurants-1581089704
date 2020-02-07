class PizzasController < ApplicationController
  
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find_by(id: params[:id])
    @restaurant = Restaurant.find_by(id: params[:id])
  end

  def new
    # @restaurant = Restaurant.all
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    @pizza.save
    redirect_to pizzas_path
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients)
  end




end
