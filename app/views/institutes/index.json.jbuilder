json.array!(@institutes) do |institute|
  json.extract! institute, :id, :name, :address, :number, :district, :city, :state_id, :zip_code, :phone, :person_id
  json.url institute_url(institute, format: :json)
end
