require 'test_helper'

class GreatAreasControllerTest < ActionController::TestCase
  setup do
    @great_area = great_areas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:great_areas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create great_area" do
    assert_difference('GreatArea.count') do
      post :create, great_area: { codigo: @great_area.codigo, descricao: @great_area.descricao, titulo: @great_area.titulo }
    end

    assert_redirected_to great_area_path(assigns(:great_area))
  end

  test "should show great_area" do
    get :show, id: @great_area
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @great_area
    assert_response :success
  end

  test "should update great_area" do
    patch :update, id: @great_area, great_area: { codigo: @great_area.codigo, descricao: @great_area.descricao, titulo: @great_area.titulo }
    assert_redirected_to great_area_path(assigns(:great_area))
  end

  test "should destroy great_area" do
    assert_difference('GreatArea.count', -1) do
      delete :destroy, id: @great_area
    end

    assert_redirected_to great_areas_path
  end
end
