class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :second_render_error

    def create
        restaurantpizza = restaurantPizza.create(restaurant_pizza)
        if restaurantpizza.valid?
            render json: restaurantpizza.pizza
        else
            first_render_error
        end
    end

    private
    def restaurant_pizza
        params.permit(:pizza_id, :restaurant_id, :price)
    end

    def first_render_error(restaurantpizza)
        render json: { errors: restaurantpizza.errors.full_messages }
    end

    def second_render_error(records)
        render json: { errors: records.record.errors.full_messages }
    end
end
