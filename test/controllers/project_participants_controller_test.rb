require 'test_helper'

class ProjectParticipantsControllerTest < ActionController::TestCase
  setup do
    @project_participant = project_participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_participant" do
    assert_difference('ProjectParticipant.count') do
      post :create, project_participant: { person: @project_participant.person, project: @project_participant.project, role: @project_participant.role, weekly_time: @project_participant.weekly_time }
    end

    assert_redirected_to project_participant_path(assigns(:project_participant))
  end

  test "should show project_participant" do
    get :show, id: @project_participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_participant
    assert_response :success
  end

  test "should update project_participant" do
    patch :update, id: @project_participant, project_participant: { person: @project_participant.person, project: @project_participant.project, role: @project_participant.role, weekly_time: @project_participant.weekly_time }
    assert_redirected_to project_participant_path(assigns(:project_participant))
  end

  test "should destroy project_participant" do
    assert_difference('ProjectParticipant.count', -1) do
      delete :destroy, id: @project_participant
    end

    assert_redirected_to project_participants_path
  end
end
