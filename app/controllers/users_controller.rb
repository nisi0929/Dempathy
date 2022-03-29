class UsersController < ApplicationController
  # before Action
  def check_admin
    if current_user.admin === false
      redirected_to users_path
    else

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
end
