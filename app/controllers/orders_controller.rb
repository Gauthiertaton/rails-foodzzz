class OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(created_at: :desc)
  end

  def show
    @order = Order.find(params[:id])
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
