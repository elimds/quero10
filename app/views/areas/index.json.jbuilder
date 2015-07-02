json.array!(@areas) do |area|
  json.extract! area, :id, :codigo, :descricao
  json.url area_url(area, format: :json)
end
