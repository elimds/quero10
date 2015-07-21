json.array!(@nature_financings) do |nature_financing|
  json.extract! nature_financing, :id, :title, :description, :institute_id
  json.url nature_financing_url(nature_financing, format: :json)
end
