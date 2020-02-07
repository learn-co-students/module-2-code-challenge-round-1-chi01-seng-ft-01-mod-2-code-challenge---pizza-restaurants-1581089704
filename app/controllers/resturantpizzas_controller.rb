class ResturantpizzasController < ApplicationController
    def index 
        @resturantpizzas = Resturantpizzas.all
    end
end
