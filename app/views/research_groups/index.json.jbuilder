json.array!(@research_groups) do |research_group|
  json.extract! research_group, :id, :title, :leader_id, :vice_leader_id, :area, :sub_area, :date_update, :description, :justification, :institutions, :infraestructure, :laboratories, :status
  json.url research_group_url(research_group, format: :json)
end
