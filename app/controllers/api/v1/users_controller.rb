class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]
  def index
    @user = User.all
    render json: @user, root: false
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
  def set
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(   :email, :password)
  end

end