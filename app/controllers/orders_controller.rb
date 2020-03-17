class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :desc)
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
    # @order.distance_between_restos = current_user.restaurant.address - order.menu.restaurant.address
    # @order.duration =
    @order.save!

    redirect_to order_path(@order)
  end
end



# "https://api.mapbox.com/directions/v5/mapbox/walking/<%=latitude%>;<%=longitude%>?access_token=pk.eyJ1IjoianVzdGluZWJhcmJhdWx0IiwiYSI6ImNrNm01b2ljYzBrcWIzbnA3ancwYTFmdnIifQ.zmvyCrK0HxPEnjQoXmiUjw"
