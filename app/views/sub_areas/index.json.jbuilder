json.array!(@sub_areas) do |sub_area|
  json.extract! sub_area, :id, :title, :description, :area_id
  json.url sub_area_url(sub_area, format: :json)
end
