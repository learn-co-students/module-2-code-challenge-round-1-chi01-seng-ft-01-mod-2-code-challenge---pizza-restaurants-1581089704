class Restaurant < ApplicationRecord
    has_many :pizza_resturants
    has_many :pizzas, through: :pizza_resturant
end