json.array!(@specialities) do |speciality|
  json.extract! speciality, :id, :codigo, :titulo, :descricao, :sub_area_id
  json.url speciality_url(speciality, format: :json)
end
