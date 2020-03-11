class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurants_geocoded = Restaurant.geocoded #returns flats with coordinates

    @markers = @restaurants_geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])

  end
end
