class UsersController < ApplicationController
  def index
    @users = User.where.not(admin: true)
  end

  def show
    @user = User.find(params[:id])
  end
end
