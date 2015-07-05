require 'test_helper'

class NaturefinancingsControllerTest < ActionController::TestCase
  setup do
    @naturefinancing = naturefinancings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:naturefinancings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create naturefinancing" do
    assert_difference('Naturefinancing.count') do
      post :create, naturefinancing: { codigo: @naturefinancing.codigo, descricao: @naturefinancing.descricao }
    end

    assert_redirected_to naturefinancing_path(assigns(:naturefinancing))
  end

  test "should show naturefinancing" do
    get :show, id: @naturefinancing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @naturefinancing
    assert_response :success
  end

  test "should update naturefinancing" do
    patch :update, id: @naturefinancing, naturefinancing: { codigo: @naturefinancing.codigo, descricao: @naturefinancing.descricao }
    assert_redirected_to naturefinancing_path(assigns(:naturefinancing))
  end

  test "should destroy naturefinancing" do
    assert_difference('Naturefinancing.count', -1) do
      delete :destroy, id: @naturefinancing
    end

    assert_redirected_to naturefinancings_path
  end
end
