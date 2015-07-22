require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { area: @project.area, category: @project.category, date_end: @project.date_end, date_end_financing: @project.date_end_financing, date_start: @project.date_start, date_start_financing: @project.date_start_financing, department: @project.department, description_estimate: @project.description_estimate, email: @project.email, financial_institution: @project.financial_institution, gols: @project.gols, great_area: @project.great_area, introduction: @project.introduction, keywords: @project.keywords, methodology: @project.methodology, nature_financing: @project.nature_financing, references: @project.references, research_group: @project.research_group, short_description: @project.short_description, speciality: @project.speciality, sub_area: @project.sub_area, title: @project.title, value_estimate: @project.value_estimate }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: { area: @project.area, category: @project.category, date_end: @project.date_end, date_end_financing: @project.date_end_financing, date_start: @project.date_start, date_start_financing: @project.date_start_financing, department: @project.department, description_estimate: @project.description_estimate, email: @project.email, financial_institution: @project.financial_institution, gols: @project.gols, great_area: @project.great_area, introduction: @project.introduction, keywords: @project.keywords, methodology: @project.methodology, nature_financing: @project.nature_financing, references: @project.references, research_group: @project.research_group, short_description: @project.short_description, speciality: @project.speciality, sub_area: @project.sub_area, title: @project.title, value_estimate: @project.value_estimate }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
