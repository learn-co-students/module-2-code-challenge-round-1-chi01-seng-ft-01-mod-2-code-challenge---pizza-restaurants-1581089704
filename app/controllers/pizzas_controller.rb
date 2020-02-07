class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params['id'])
    @pizza.name = Pizza.find(params['id']).name
    @pizza.ingredients = Pizza.find(params['id']).ingredients
  end

  def new 
  end

    def create
      @pizza = Pizza.new 
      @pizza.name = params['pizza']['name']
      @pizza.address = params['pizza']['ingredients']
      @pizza.save
      redirect_to pizza_path
    end
  
end
