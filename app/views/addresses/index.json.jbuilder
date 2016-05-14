json.array!(@addresses) do |address|
  json.extract! address, :id, :address, :icij_id, :valid_until, :country_codes, :countries, :node_id, :sourceid
  json.url address_url(address, format: :json)
end
