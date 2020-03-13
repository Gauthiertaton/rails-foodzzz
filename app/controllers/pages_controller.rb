class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def orders_opened
  end

  def meals_recolted
  end
end
