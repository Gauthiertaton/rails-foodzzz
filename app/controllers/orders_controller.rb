require 'json'
require 'open-uri'

class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(creation_date: :desc)
  end

  def show
    @order = Order.find(params[:id])
    @Restaurant = Restaurant.geocoded

  end

  def create
    @order = Order.new
    @order.user_id = current_user.id
    @order.menu = Menu.find(params[:menu_id])
    @order.status = 'En cours'
    @order.creation_date = DateTime.now.to_date
    mapbox_url = "https://api.mapbox.com/directions/v5/mapbox/walking/#{current_user.restaurant.longitude},#{current_user.restaurant.latitude};#{@order.menu.restaurant.longitude},#{@order.menu.restaurant.latitude}?access_token=#{ENV["MAPBOX_API_KEY"]}"
    coordinates_serialized = open(mapbox_url).read
    coordinates = JSON.parse(coordinates_serialized)
    duration_in_S = coordinates["routes"][0]["legs"][0]["duration"]
    @order.duration = duration_in_S / 60.0
    distance_in_M = coordinates["routes"][0]["legs"][0]["distance"]
    @order.distance_between_restos = distance_in_M / 1000
    @restaurant = @order.menu.restaurant
    @restaurant.update(stock: @restaurant.stock - 1)
    @order.save!

    redirect_to order_path(@order)
  end
end
