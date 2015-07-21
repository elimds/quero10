json.array!(@financial_institutions) do |financial_institution|
  json.extract! financial_institution, :id, :name, :address, :number, :district, :city, :state_id, :zip_code, :person_id
  json.url financial_institution_url(financial_institution, format: :json)
end
