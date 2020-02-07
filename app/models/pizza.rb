class Pizza < ApplicationRecord
    validates :name, presence: true
    validates :ingredients, presence: true
    validates :name, uniqueness: true

    has_many :restaurant_pizzas
    has_many :restaurants, through: :restaurant_pizzas
end
