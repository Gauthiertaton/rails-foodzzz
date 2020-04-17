class PagesController < ApplicationController
  # accessible pages without login
  # skip_before_action :authenticate_user!, only: [:home]

  def home
    @my_resto_users = current_user.restaurant.users
    @users = @my_resto_users.where.not(id: current_user.id)
  end

  def orders_opened
  end

  def meals_recolted
  end
end
