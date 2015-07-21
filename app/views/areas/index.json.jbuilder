json.array!(@areas) do |area|
  json.extract! area, :id, :title, :description, :great_area_id
  json.url area_url(area, format: :json)
end
