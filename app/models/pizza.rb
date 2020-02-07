class Pizza < ApplicationRecord
    has_many :restaurants
    has_many :restaurantpizzas, through: :restaurants

end
