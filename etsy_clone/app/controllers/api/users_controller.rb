class Api::UsersController < ApplicationController
  include Rails.application.routes.url_helpers

  def create
    @user = User.new(user_params)
    if @user.save
      signin(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 401
    end
  end
  
  def update
    @user = selected_user
    if @user && @user.update_attributes(user_params)
      render :show
    elsif !@user
      render json: ['Could not find user'], status: 400
    else
      render json: @user.errors.full_messages, status: 401
    end
  end
  
  def show
    @user = User.with_attached_photos.find(params[:id])
  end
  
  def index
    @users = User.all
  end
  
  def destroy
    @user = selected_user
    if @user
      @user.destroy
      render :show
    else
      render ['Could not find user']
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:username, :email, :password, photos: [])
  end
end
