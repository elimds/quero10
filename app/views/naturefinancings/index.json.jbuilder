json.array!(@naturefinancings) do |naturefinancing|
  json.extract! naturefinancing, :id, :codigo, :descricao
  json.url naturefinancing_url(naturefinancing, format: :json)
end
