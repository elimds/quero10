json.array!(@great_areas) do |great_area|
  json.extract! great_area, :id, :title, :description
  json.url great_area_url(great_area, format: :json)
end
