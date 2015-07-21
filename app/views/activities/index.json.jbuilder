json.array!(@activities) do |activity|
  json.extract! activity, :id, :description, :responsible_id, :date_start, :date_end, :situation, :percent_run, :project_id
  json.url activity_url(activity, format: :json)
end
