json.array!(@testes) do |testis|
  json.extract! testis, :id, :codigo, :nome
  json.url testis_url(testis, format: :json)
end
