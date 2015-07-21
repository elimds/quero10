json.array!(@departments) do |department|
  json.extract! department, :id, :name, :institute_id, :person_id
  json.url department_url(department, format: :json)
end
