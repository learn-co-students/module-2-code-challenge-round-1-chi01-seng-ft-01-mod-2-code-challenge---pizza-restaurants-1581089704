class Pizza < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas

    validates :name, uniqueness: true, presence: true
    validates :ingredients, presence: true

    def pizza_count
        self.length
    end
end
