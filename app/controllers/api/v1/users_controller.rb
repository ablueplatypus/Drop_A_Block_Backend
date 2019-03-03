class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :created
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def login
    @user = User.find {|user| user.username.downcase == params[:username].downcase}
    if @user
      render json: @user, status: :accepted
    else
      render json: {message: 'User name taken'}
    end
  end



  private

  def user_params
    params.permit(:username, :password)
  end

end
