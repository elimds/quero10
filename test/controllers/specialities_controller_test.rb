require 'test_helper'

class SpecialitiesControllerTest < ActionController::TestCase
  setup do
    @speciality = specialities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speciality" do
    assert_difference('Speciality.count') do
      post :create, speciality: { description: @speciality.description, sub_area_id: @speciality.sub_area_id, title: @speciality.title }
    end

    assert_redirected_to speciality_path(assigns(:speciality))
  end

  test "should show speciality" do
    get :show, id: @speciality
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speciality
    assert_response :success
  end

  test "should update speciality" do
    patch :update, id: @speciality, speciality: { description: @speciality.description, sub_area_id: @speciality.sub_area_id, title: @speciality.title }
    assert_redirected_to speciality_path(assigns(:speciality))
  end

  test "should destroy speciality" do
    assert_difference('Speciality.count', -1) do
      delete :destroy, id: @speciality
    end

    assert_redirected_to specialities_path
  end
end
