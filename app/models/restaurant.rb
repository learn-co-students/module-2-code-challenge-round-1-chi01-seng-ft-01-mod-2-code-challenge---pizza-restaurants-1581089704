class Restaurant < ApplicationRecord
  has_many :restaurant_pizzas
  has_many :pizzas, through: :restaurant_pizzas

  def pizzas
    my_restaurant_pizzas = RestaurantPizza.all.select do |rp|
      rp.restaurant_id == self.id
    end
    pizzas = my_restaurant_pizzas.each do |mrp|
      mrp.pizza_id
    end
  end

end
