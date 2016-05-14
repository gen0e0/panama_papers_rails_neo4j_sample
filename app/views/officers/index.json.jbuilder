json.array!(@officers) do |officer|
  json.extract! officer, :id, :name, :icij_id, :valid_until, :country_codes, :countries, :node_id, :sourceid
  json.url officer_url(officer, format: :json)
end
