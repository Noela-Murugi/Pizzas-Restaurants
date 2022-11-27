class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_errors

    def create
        restaurantpizza = restaurantPizza.create(restaurant_pizza)
        if restaurantpizza.valid?
            render json: restaurantpizza.pizza
        else
            render json: { errors: restaurantpizza.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def restaurant_pizza
        params.permit(:pizza_id, :restaurant_id, :price)
    end

    def render_errors(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
