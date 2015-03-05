json.array!(@incidents) do |incident|
  json.extract! incident, :id, :issue, :env, :region, :description, :rootcause, :resolution
  json.url incident_url(incident, format: :json)
end
