class Admin::MenusController < ApplicationController

  def index
    @restaurant = current_user.restaurant
    @menus = @restaurant.menus
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    @menu.restaurant_id = current_user.restaurant_id
    if @menu.save!
      redirect_to admin_menus_path, notice: "Le menu a bien été créé."
    else
      render :new
    end
  end

  def edit
  end


  def update
    if @menu.update(menu_params)
      redirect_to admin_menus_path, notice: "Le menu a bien été modifié."
    else
      render :edit
    end
  end

  def destroy
    @menu.destroy
    redirect_to admin_menus_path, notice: "Le menu a bien été supprimé."
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :description, :vegetarien, :vegan, :halal, :sans_gluten, :photo)
  end
end
