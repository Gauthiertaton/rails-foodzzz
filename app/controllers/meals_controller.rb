class MealsController < ApplicationController
  def release
    current_user.update(menu_released: true)

    user_restaurant = current_user.restaurant
    user_restaurant.update(stock: user_restaurant.stock + 1)

    redirect_to meals_recolted_path
  end
end
