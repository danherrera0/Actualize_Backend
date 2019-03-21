class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    @users = @users.map do |user|
      {
        id: user.id,
        lastName: user.lastName,
        email: user.email,
        username: user.username,
        tasks: user.tasks
      }
    end
    render json: @users, status: :ok
  end

  def show
    @user = User.find(params[:id])

    render json: @user, status: :ok
  end

end
