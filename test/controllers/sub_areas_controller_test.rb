require 'test_helper'

class SubAreasControllerTest < ActionController::TestCase
  setup do
    @sub_area = sub_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_area" do
    assert_difference('SubArea.count') do
      post :create, sub_area: { area_id: @sub_area.area_id, description: @sub_area.description, title: @sub_area.title }
    end

    assert_redirected_to sub_area_path(assigns(:sub_area))
  end

  test "should show sub_area" do
    get :show, id: @sub_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_area
    assert_response :success
  end

  test "should update sub_area" do
    patch :update, id: @sub_area, sub_area: { area_id: @sub_area.area_id, description: @sub_area.description, title: @sub_area.title }
    assert_redirected_to sub_area_path(assigns(:sub_area))
  end

  test "should destroy sub_area" do
    assert_difference('SubArea.count', -1) do
      delete :destroy, id: @sub_area
    end

    assert_redirected_to sub_areas_path
  end
end
