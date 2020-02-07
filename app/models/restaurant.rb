class Restaurant < ApplicationRecord
    has_many :pizzas
    has_many :restaurantpizza, through: :pizzas
    
end
