class Restaurant < ApplicationRecord
    has_many :pizzas, through: :RestaurantPizza
  
end
