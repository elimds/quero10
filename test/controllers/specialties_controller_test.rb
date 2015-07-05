require 'test_helper'

class SpecialtiesControllerTest < ActionController::TestCase
  setup do
    @specialty = specialties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specialty" do
    assert_difference('Specialty.count') do
      post :create, specialty: { codigo: @specialty.codigo, descricao: @specialty.descricao, sub_area_id: @specialty.sub_area_id, titulo: @specialty.titulo }
    end

    assert_redirected_to specialty_path(assigns(:specialty))
  end

  test "should show specialty" do
    get :show, id: @specialty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specialty
    assert_response :success
  end

  test "should update specialty" do
    patch :update, id: @specialty, specialty: { codigo: @specialty.codigo, descricao: @specialty.descricao, sub_area_id: @specialty.sub_area_id, titulo: @specialty.titulo }
    assert_redirected_to specialty_path(assigns(:specialty))
  end

  test "should destroy specialty" do
    assert_difference('Specialty.count', -1) do
      delete :destroy, id: @specialty
    end

    assert_redirected_to specialties_path
  end
end
