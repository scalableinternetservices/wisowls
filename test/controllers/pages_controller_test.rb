require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get login_path
    assert_response :success
  end

  test "should get register" do
    get signup_path
    assert_response :success
  end

  # test "should get profile" do
  #   get profile_path
  #   assert_response :success
  # end

  test "should get home" do
    get home_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

end
