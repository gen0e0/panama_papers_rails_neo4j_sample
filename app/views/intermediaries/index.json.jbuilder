json.array!(@intermediaries) do |intermediary|
  json.extract! intermediary, :id, :name, :internal_id, :address, :valid_until, :country_codes, :countries, :status, :node_id, :sourceid
  json.url intermediary_url(intermediary, format: :json)
end
