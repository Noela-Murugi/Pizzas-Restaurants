class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
      restaurants = Restaurant.all
      render json: restaurants
  end
  
  def show
      restaurant = get_restaurant
      if restaurant
          render json: restaurant , include: :pizzas
      else
          render_not_found_response
      end
  end

  def destroy
      restaurant = get_restaurant
      if restaurant
          restaurant.destroy
          head :no_content
      else
          render_not_found_response
      end
  end

  private
    def get_restaurant
        Restaurant.find(params[:id])
    end

    def render_not_found_response
        render json: {error: "Restaurant not found"}, status: :not_found
    end
end
