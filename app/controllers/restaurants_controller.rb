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
    coordinates = current_user.restaurant.geocode

    mapbox_url = "https://api.mapbox.com/directions/v5/mapbox/walking/#{coordinates.last},#{coordinates.first};#{@restaurant.longitude},#{@restaurant.latitude}?access_token=#{ENV["MAPBOX_API_KEY"]}"
    coordinates_serialized = open(mapbox_url).read
    coordinates = JSON.parse(coordinates_serialized)
    duration_in_S = coordinates["routes"][0]["legs"][0]["duration"] / 60.0
    distance_in_M = coordinates["routes"][0]["legs"][0]["distance"] / 1000
    @distance = distance_in_M.round(0)
    @duration = duration_in_S.round(0)
  end

  # def update
  #   @restaurant = current_user.restaurant
  #   @restaurant.stock += 1
  #   @restaurant.save!
  #   redirect_to release_meal_path
  # end
end
