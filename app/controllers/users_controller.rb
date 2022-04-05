class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
