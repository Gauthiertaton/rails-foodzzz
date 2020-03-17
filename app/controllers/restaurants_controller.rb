class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @my_resto = current_user.restaurant
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

      if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @restaurants = Restaurant.where(sql_query, query: "%#{params[:query]}%")
      # @restaurants = Restaurant.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def except
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
  end

  # def update
  #   @restaurant = current_user.restaurant
  #   @restaurant.stock += 1
  #   @restaurant.save!
  #   redirect_to release_meal_path
  # end
end
