class UsersController < ApplicationController
  
  def index 
    @users = User.all
  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.new(user_params)
    if @new_user.save
      redirect_to users_path
    else
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      redirect_to user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
      if @user.delete
      redirect_to users_path
    end
  end

  def search
    @search_results  = User.search(params[:search])
    render results_users_path
  end

  def results
  end 

  private

  def user_params
    params.require(:user).permit!
  end 

end
