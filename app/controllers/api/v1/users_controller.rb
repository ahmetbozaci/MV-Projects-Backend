class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all

    if @users.empty?
      render json: {
        status: 204,
        errors: 'no users found'
      }
    else
      render json: @users
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private

  def user_params
    params.permit(:name)
  end
end
