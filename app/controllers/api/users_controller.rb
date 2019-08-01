class Api::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    binding.pry
    @user = User.new(user_params)

    if @user.save
      @user.reset_token
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def update
    @user = current_user

    if @user.update
      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :image_url)
  end
end
