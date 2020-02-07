class Pizza < ApplicationRecord
    has_many :pizza_restaurants
    has_many :restaurants, through: :pizza_restaurants
    validates :name, presence: true
    validates :ingredients, presence: true
    validates :name, uniqueness: true

    def restaurant_id=(new_id)
        if self.valid?
            self.restaurants << Restaurant.find_by(id: new_id)
        end
    end

    def restaurant_id
        results = []
        self.restaurants.each do |restaurant|
            results << restaurant.id
        end
    end

end
