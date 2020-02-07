class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end 

  def create
    @restaurants = Restaurant.all
    @pizza = Pizza.new(name: params[:pizza][:name], ingredients: params[:pizza][:ingredients])
    if @pizza.valid?
      @pizza.save
      RestaurantPizza.create(restaurant_id: params[:pizza][:restaurant_id], pizza_id: @pizza.id)
      redirect_to pizza_path(@pizza)
    else  
      flash[:order_errors] = @pizza.errors.full_messages
      redirect_to :new
    end 

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end 

 



end
