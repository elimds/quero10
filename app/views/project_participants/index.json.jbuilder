json.array!(@project_participants) do |project_participant|
  json.extract! project_participant, :id, :project, :person, :role, :weekly_time
  json.url project_participant_url(project_participant, format: :json)
end
