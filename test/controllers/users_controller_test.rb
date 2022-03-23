require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers
  fixtures :users

  def setup
    @user = users(:one)
  end
  test 'true' do
    assert true
  end

  test 'able to user edit' do
    login_as(@user, scope: :user)
    get edit_user_registration_path(@user)
    assert_response :success
  end

  test 'if user logged in, unable to user edit' do
    get edit_user_registration_path(@user)
    assert_response :unauthorized
  end
end
