class CreateResturantPizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :resturant_pizzas do |t|
      t.string :name
        t.integer :pizza_id
        t.integer :restaurant_id
    end
  end
end
