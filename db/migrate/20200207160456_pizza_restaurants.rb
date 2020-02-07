class PizzaRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_restaurants do |t|
      t.integer :pizza_id
      t.integer :restaurant_id
    end
  end
end
