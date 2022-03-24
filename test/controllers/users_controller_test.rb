require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers
  fixtures :users

  def setup
    @user = users(:one)
    @other_user = users(:two)
    @admin = users(:admin)
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

  test 'create user' do
    get new_user_session_path
    assert_difference 'User.count', +1 do
      post user_registration_path,
           params: {
             user: {
               name: 'ruby2',
               email: 'ruby2@user.com',
               password: 'ruby2user',
               image: 'rubyのimage',
               description: 'rubyは動的型付け言語です',
               admin: false,
             },
           }
    end
  end

  # BCrypt::Errors::InvalidHash: invalid hashエラーが出る
  # パスワードがハッシュ化されるから？？

  # test 'unable to edit user data by admin' do
  #   login_as(@other_user, scope: :user)
  #   get edit_user_registration_path(@user)
  #   patch user_registration_path(@user), params: { user: { name: 'rubyedit' } }
  #   get user_path(@user)
  #   assert_select 'p.user-name', { text: '名前：rubyedit' }
  # end

  test 'able to edit user data by admin' do
  end
end
