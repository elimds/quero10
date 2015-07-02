json.array!(@sub_areas) do |sub_area|
  json.extract! sub_area, :id, :codigo, :descricao, :area_id
  json.url sub_area_url(sub_area, format: :json)
end
