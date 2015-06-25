json.array!(@categories) do |category|
  json.extract! category, :id, :codigo, :titulo, :descricao
  json.url category_url(category, format: :json)
end
