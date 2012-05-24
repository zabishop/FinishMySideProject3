require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get terms_of_use" do
    get :terms_of_use
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

  test "should get side_project" do
    get :side_project
    assert_response :success
  end

end
