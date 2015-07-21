require 'test_helper'

class NatureFinancingsControllerTest < ActionController::TestCase
  setup do
    @nature_financing = nature_financings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nature_financings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nature_financing" do
    assert_difference('NatureFinancing.count') do
      post :create, nature_financing: { description: @nature_financing.description, institute_id: @nature_financing.institute_id, title: @nature_financing.title }
    end

    assert_redirected_to nature_financing_path(assigns(:nature_financing))
  end

  test "should show nature_financing" do
    get :show, id: @nature_financing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nature_financing
    assert_response :success
  end

  test "should update nature_financing" do
    patch :update, id: @nature_financing, nature_financing: { description: @nature_financing.description, institute_id: @nature_financing.institute_id, title: @nature_financing.title }
    assert_redirected_to nature_financing_path(assigns(:nature_financing))
  end

  test "should destroy nature_financing" do
    assert_difference('NatureFinancing.count', -1) do
      delete :destroy, id: @nature_financing
    end

    assert_redirected_to nature_financings_path
  end
end
