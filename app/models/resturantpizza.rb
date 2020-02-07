class Resturantpizza < ApplicationRecord
    beglongs_to :pizza
    beglongs_to :resturant
end
