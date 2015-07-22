json.array!(@projects) do |project|
  json.extract! project, :id, :title, :department, :date_start, :date_end, :keywords, :email, :category, :great_area, :area, :sub_area, :speciality, :research_group, :short_description, :introduction, :gols, :methodology, :references, :financial_institution, :nature_financing, :date_start_financing, :date_end_financing, :description_estimate, :value_estimate
  json.url project_url(project, format: :json)
end
