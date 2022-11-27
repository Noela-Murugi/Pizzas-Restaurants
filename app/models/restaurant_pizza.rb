class RestaurantPizza < ApplicationRecord
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 30 }

end
