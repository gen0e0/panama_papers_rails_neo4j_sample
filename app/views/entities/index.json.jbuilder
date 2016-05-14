json.array!(@entities) do |entity|
  json.extract! entity, :id, :name, :original_name, :former_name, :jurisdiction, :jurisdiction_description, :company_type, :address, :internal_id, :incorporation_date, :inactivation_date, :struck_off_date, :dorm_date, :status, :service_provider, :ibcruc, :country_codes, :countries, :note, :valid_until, :node_id, :source_id
  json.url entity_url(entity, format: :json)
end
