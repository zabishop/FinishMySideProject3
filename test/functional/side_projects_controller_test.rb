require 'test_helper'

class SideProjectsControllerTest < ActionController::TestCase
  setup do
    @side_project = side_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_project" do
    assert_difference('SideProject.count') do
      post :create, side_project: { description: @side_project.description, image_url: @side_project.image_url, project_title: @side_project.project_title }
    end

    assert_redirected_to side_project_path(assigns(:side_project))
  end

  test "should show side_project" do
    get :show, id: @side_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_project
    assert_response :success
  end

  test "should update side_project" do
    put :update, id: @side_project, side_project: { description: @side_project.description, image_url: @side_project.image_url, project_title: @side_project.project_title }
    assert_redirected_to side_project_path(assigns(:side_project))
  end

  test "should destroy side_project" do
    assert_difference('SideProject.count', -1) do
      delete :destroy, id: @side_project
    end

    assert_redirected_to side_projects_path
  end
end
