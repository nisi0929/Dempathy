class UsersController < ApplicationController
  before_action :check_admin, only: %i[administrator destroy_by_admin]

  # before Action
  def check_admin
    if user_signed_in?
      redirect_to users_path if current_user.admin == false
    else
      redirect_to users_path
    end
  end

  def index
    @users = User.where.not(admin: true).where.not(suitable: false)
  end

  def show
    @user = User.find(params[:id])
  end

  def administrator
    @unsuitable_user = User.where(suitable: false)
    @suitable_user = User.where.not(admin: true)
  end

  # administratorで実行する削除メソッド
  def destroy_by_admin
    @user = User.find(params[:id])
    @user.destroy
  end
end
