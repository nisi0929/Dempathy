module Admin
  extend ActiveSupport::Concern

  # before Action
  def check_admin
    if user_signed_in?
      redirect_to users_path if current_user.admin == false
    else
      redirect_to users_path
    end
  end
end
