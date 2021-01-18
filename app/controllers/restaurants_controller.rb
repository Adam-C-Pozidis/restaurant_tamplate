class RestaurantsController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index show]
    before_action :set_restaurant, only: :show
    
    def index
        @restaurants = Restaurant.all
    end

    def show
    end

    private

    def set_restaurant
        @restaurant = Restaurant.find(params[:id])
    end
end
