class MenusController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
