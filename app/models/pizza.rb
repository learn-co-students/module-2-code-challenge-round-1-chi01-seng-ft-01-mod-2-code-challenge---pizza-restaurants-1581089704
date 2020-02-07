class Pizza < ApplicationRecord
    # belongs_to :restaurant
    has_many :restaurants, through: :RestaurantPizza
  
    #belongs_to_many??
end
