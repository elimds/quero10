json.array!(@categories) do |category|
  json.extract! category, :id, :title, :description, :institute_id
  json.url category_url(category, format: :json)
end
