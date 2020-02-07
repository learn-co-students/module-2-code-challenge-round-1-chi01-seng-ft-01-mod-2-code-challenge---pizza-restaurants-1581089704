class PizzasController < ApplicationController
  def show
    @pizza = Pizza.find(params[:id])
  end
  def index
    @pizzas = Pizza.all
  end

  def new 
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create 
    @pizza = Pizza.new(pizza_params)
    @restaurants = Restaurant.all
    if @pizza.valid?
      @pizza.save
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end


  private 

  def pizza_params
    params[:pizza][:restaurants] = Restaurant.find_by(name: params[:pizza][:restaurants])
    params.require(:pizza).permit(:name, :ingredients, :restaurants)
  end

 
end
