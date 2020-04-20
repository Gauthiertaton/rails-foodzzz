class Admin::MenusController < ApplicationController

  def index
    @restaurant = current_user.restaurant
    @menus = @restaurant.menus
  end

  def edit

  end

  def create

  end

  def update

  end
end
