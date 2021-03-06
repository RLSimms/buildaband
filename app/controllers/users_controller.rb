class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]
    @user.band_id = params[:band_id]

    if @user.save
      redirect_to users_url, :notice => "User created."
    else
      redirect_to new_user_url, :notice => "Username taken."
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.username = params[:username]
    @user.band_id = params[:band_id]

    if @user.save
      redirect_to users_url, :notice => "User updated."
    else
      redirect_to new_user_url, :notice => "Username taken."
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url :notice => "User deleted."
      end
end
