class RestrauntPizzasController < ApplicationController
      def create
        restrauntpizza = RestrauntPizza.create(restraunt_pizza)
        if restrauntpizza.valid?
            render json: restrauntpizza.pizza
        else
            render json: { errors: restrauntpizza.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    def restraunt_pizza
        params.permit(:pizza_id, :restraunt_id, :price)
    end
end
