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
        lng: @order.menu.restaurant.longitude
      }
    ]
  end

  def create
    @order = Order.new
    @order.user_id = current_user.id
    @order.menu = Menu.find(params[:menu_id])
    @order.status = 'en cours'
    @order.save!

    redirect_to order_path(@order)
  end
end


# @raclette_machines = RacletteMachine.geocoded #returns flats with coordinates

#     @markers = @raclette_machines.map do |raclette_machine|
#       {
#         lat: raclette_machine.latitude,
#         lng: raclette_machine.longitude
#       }
