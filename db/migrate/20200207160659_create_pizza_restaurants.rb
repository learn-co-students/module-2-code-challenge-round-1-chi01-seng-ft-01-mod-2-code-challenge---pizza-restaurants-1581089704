class CreatePizzaRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :pizza_restaurants do |t|
      t.references :pizza, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
