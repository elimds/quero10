json.array!(@specialties) do |specialty|
  json.extract! specialty, :id, :codigo, :titulo, :descricao, :sub_area_id
  json.url specialty_url(specialty, format: :json)
end
