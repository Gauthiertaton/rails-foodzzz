class Admin::UsersController < ApplicationController

  def index
    @my_resto_users = current_user.restaurant.users
    @users = @my_resto_users.where.not(id: current_user.id)

     # display user according to the query in the search bar
    if params[:query].present?
    sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
    @users = @users.where(sql_query, query: "%#{params[:query]}%")

    end
  end

  def new
    @user_new = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to admin_users_path, notice: "L'employé a bien été créé."
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, notice: "L'employé a bien été modifié."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: "L'employé a bien été supprimé."
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :admin, :photo)
  end
end
