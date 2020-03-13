class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    # if user_signed_in?
    #   redirect_to restaurants_path
    # end
  end

  def orders_opened
  end

  def meals_recolted
  end
end
