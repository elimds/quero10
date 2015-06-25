json.array!(@great_areas) do |great_area|
  json.extract! great_area, :id, :codigo, :titulo, :descricao
  json.url great_area_url(great_area, format: :json)
end
