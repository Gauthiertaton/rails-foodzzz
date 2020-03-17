class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
    @Restaurant = Restaurant.geocoded

    @markers = [
      {
        lat: @order.menu.restaurant.latitude,
        lng: @order.menu.restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @order.menu.restaurant })
      }
    ]
  end

  def create
    @order = Order.new
    @order.user_id = current_user.id
    @order.menu = Menu.find(params[:menu_id])
    @order.status = 'En cours'
    @restaurant = @order.menu.restaurant
    @restaurant.update(stock: @restaurant.stock - 1)
    @order.save!

    redirect_to order_path(@order)
  end
end
