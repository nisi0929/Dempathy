require "application_system_test_case"

class UserCategoriesTest < ApplicationSystemTestCase
  setup do
    @user_category = user_categories(:one)
  end

  test "visiting the index" do
    visit user_categories_url
    assert_selector "h1", text: "User categories"
  end

  test "should create user category" do
    visit user_categories_url
    click_on "New user category"

    fill_in "Category", with: @user_category.category_id
    fill_in "User", with: @user_category.user_id
    click_on "Create User category"

    assert_text "User category was successfully created"
    click_on "Back"
  end

  test "should update User category" do
    visit user_category_url(@user_category)
    click_on "Edit this user category", match: :first

    fill_in "Category", with: @user_category.category_id
    fill_in "User", with: @user_category.user_id
    click_on "Update User category"

    assert_text "User category was successfully updated"
    click_on "Back"
  end

  test "should destroy User category" do
    visit user_category_url(@user_category)
    click_on "Destroy this user category", match: :first

    assert_text "User category was successfully destroyed"
  end
end
