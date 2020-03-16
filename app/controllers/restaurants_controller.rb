class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @meals = Meal.new
    @restaurants_geocoded = Restaurant.geocoded #returns restaurants with coordinates

    @markers = @restaurants_geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
    @user = current_user
    @menu_released = current_user.menu_released
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new

  end
end
